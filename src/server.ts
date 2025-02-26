import fastify from 'fastify';
import { app } from './app'
import { env } from './env'

app.listen({ port: env.PORT, host: '0.0.0.0' }).then(() => {
  // if (err) {
  //   // console..log.error(err);
  //   process.exit(1);
  // }
  console.log(`Server running `)
}
)
