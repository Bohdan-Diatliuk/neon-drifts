import express, { type Request, type Response } from 'express';

const app = express();
const PORT = 3000;

app.use(express.json());

app.get('/', ((_req: Request, res: Response) => {
    res.send('Express + TypeScript')
}))

app.listen(PORT, () => {
    console.log(`Express is listening at http://localhost:${PORT}`)
})
