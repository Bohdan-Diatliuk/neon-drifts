import express, {} from 'express';
const app = express();
const PORT = 3000;
app.use(express.json());
app.get('/', ((_req, res) => {
    res.send('Express + TypeScript');
}));
app.listen(PORT, () => {
    console.log(`Express is listening at http://localhost:${PORT}`);
});
//# sourceMappingURL=app.js.map