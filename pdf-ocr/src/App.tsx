import React, { useEffect, useState, useRef } from 'react';
import { createWorker } from 'tesseract.js';
import { ImagePreProcessing } from './service/image-preprocess-service';
import './App.css';

const App: React.FC = () => {

	const [image, setImage] = useState("");
	const [ocrText, setOCRText] = useState('');
	const [confidence, setConfidence] = useState(0);

	const canvasRef = useRef<HTMLCanvasElement>(null);
	const imageRef = useRef<HTMLImageElement>(null);

	const worker = createWorker({
		logger: (m: any) => console.log(m),
	});

	useEffect(() => {

		// async function init() {

		// 	const preprocessService = new ImagePreProcessing();
		// 	const canvas = canvasRef.current as HTMLCanvasElement;
		// 	const ctx = canvas.getContext('2d') as CanvasRenderingContext2D;

		// 	ctx.drawImage(imageRef.current as HTMLImageElement, 0, 0);
		// 	ctx.putImageData(preprocessService.preprocessImage(canvas), 0, 0);
		// 	const dataUrl = canvas.toDataURL("image/jpeg");

		// 	await worker.load();
		// 	await worker.loadLanguage('eng');
		// 	await worker.initialize('eng');
		// 	const results = await worker.recognize(dataUrl);
		// 	console.log(results);
		// 	setOCRText(results.data.text);
		// 	setConfidence(results.data.confidence);
		// 	await worker.terminate();
		// }

		// init();

	}, []);

	const handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
		if (event.target.files != null && event.target.files?.length > 0) {
			setImage(URL.createObjectURL(event.target.files[0]));
		}
	}

	const handleClick = async (event: React.MouseEvent<HTMLButtonElement>) => {

			const preprocessService = new ImagePreProcessing();
			const canvas = canvasRef.current as HTMLCanvasElement;
			const ctx = canvas.getContext('2d') as CanvasRenderingContext2D;

			ctx.drawImage(imageRef.current as HTMLImageElement, 0, 0);
			ctx.putImageData(preprocessService.preprocessImage(canvas), 0, 0);
			const dataUrl = canvas.toDataURL("image/jpeg");

			await worker.load();
			await worker.loadLanguage('eng');
			await worker.initialize('eng');
			const results = await worker.recognize(dataUrl);
			console.log(results);
			setOCRText(results.data.text);
			setConfidence(results.data.confidence);
			await worker.terminate();

	}

	return (

		<React.Fragment>
			<div>
				<input type="file" onChange={(event) => handleChange(event)} />
				<img  src={image} ref={imageRef}  />
				<button onClick={(event) => handleClick(event) } style={{height:50}}>Convert to text</button>
			</div>
			<div>
				<canvas ref={canvasRef} width={1200} height={900}></canvas>
			</div>
			<div>
				<div>
					{ocrText}
				</div>
				<div>
					Confidence: {confidence}
				</div>
			</div>
		</React.Fragment>

	);
}

export default App;
