package edu.kit.kastel.sdq.solidityroleadapter.operation.composition;

import java.util.List;

import edu.kit.kastel.sdq.solidityroleadapter.operation.WorkingSet;

public class SolvingInSuccession implements SolvingComposition {

	@Override
	public WorkingSet compose(List<WorkingSet> workingSets) {

		if(workingSets.isEmpty()) {
			return null;
		}
		
		WorkingSet result = workingSets.get(0).solve();
		for(int i = 1; i < workingSets.size(); i++) {
			result = result.transferTo(workingSets.get(i)).solve();
		}
		return result.copy();
	}

}
