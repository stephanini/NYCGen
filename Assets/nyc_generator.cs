using UnityEngine;
using System.Collections;

public class nyc_generator : MonoBehaviour {
	// 
	public int x;
	public int z;
	public int counter;
	public int randomizer;
	
	//is this right??
	public Transform cubeObject;
	public Transform sphereObject;
	public Transform dogObject;
	public Transform seamObject;
	public Transform selected;

	
	// Use this for initialization
	void Start () {
		counter = 0;
		x = 0;
		z = 0;
	
		}
	
	// Update is called once per frame
	void Update () {

		randomizer = Random.Range (1, 5);
		print (randomizer);


		if (randomizer == 1) {
						selected = cubeObject;
				}

		if (randomizer == 2) {
			selected = sphereObject;

		}
			if (randomizer == 3) {
						selected = dogObject;
				}

				if (randomizer == 4) {
					selected = seamObject;

		}
	


		while (counter < 10) {
			Instantiate (selected, new Vector3 (x, 0, z), Quaternion.identity);
			x += (Random.Range (1,5));
			z += (Random.Range (1,5));
			selected = null;
			if (x > 10) { 
				x = (Random.Range (-5,15));
				z += (Random.Range (-5,5));
				counter ++;

			}
		}
		
		if (Input.GetKeyDown ("r")) {
						print ("r key was pressed");
						Application.LoadLevel (0);
				}
	}
}