import os
import json

import tensorflow as tf
import mnist

port = int( os.environ['SLURM_STEP_RESV_PORTS'].split('-')[0] )
task_index = int( os.environ['SLURM_PROCID'] )
n_tasks = int( os.environ['SLURM_NPROCS'] )
worker = [ ("%s:%s" % (host,port)) for host in
                expand_hostlist( os.environ['SLURM_NODELIST']) ]
tf_config = {
    'cluster': {
        'worker': worker
    },
    'task': {'type': 'worker', 'index': task_index}
}
print(tf_config)
per_worker_batch_size = 64
num_workers = len(tf_config['cluster']['worker'])

strategy = tf.distribute.MultiWorkerMirroredStrategy()

global_batch_size = per_worker_batch_size * num_workers
multi_worker_dataset = mnist.mnist_dataset(global_batch_size)

with strategy.scope():
  # Model building/compiling need to be within `strategy.scope()`.
  multi_worker_model = mnist.build_and_compile_cnn_model()

multi_worker_model.fit(multi_worker_dataset, epochs=3, steps_per_epoch=70)