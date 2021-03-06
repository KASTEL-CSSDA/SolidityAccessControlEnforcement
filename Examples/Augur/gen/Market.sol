// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "./AccessControlContract.sol";

contract Market {
	enum OutcomeAcceptance { Agree, Disagree }

	AccessControlContract private accCtrl = new AccessControlContract(address(this)); // Auto-generated Field
	// Modification by: MARKET_CREATOR
	// Influence by: None
	address private designatedReporter; // Auto-generated Field

	// Modification by: SHAREHOLDER
	// Influence by: None
	address private openReporter; // Auto-generated Field

	// Modification by: MARKET_CREATOR
	// Influence by: None
	uint public validityBond; // Auto-generated Field

	// Modification by: MARKET_CREATOR
	// Influence by: None
	uint public creationBond; // Auto-generated Field

	// Modification by: MANAGER
	// Influence by: None
	bool private creationBondPaidOut; // Auto-generated Field

	// Modification by: SHAREHOLDER
	// Influence by: MARKET_CREATOR
	mapping(address => uint) private shares; // Auto-generated Field

	// Modification by: SHAREHOLDER
	// Influence by: None
	uint public disagreeCounter; // Auto-generated Field

	// Modification by: SHAREHOLDER
	// Influence by: None
	uint public agreeCounter; // Auto-generated Field

	// Modification by: SHAREHOLDER
	// Influence by: None
	mapping(address => OutcomeAcceptance) private disputes; // Auto-generated Field

	// Modification by: DESIGNATED_REPORTER, OPEN_REPORTER
	// Influence by: None
	string public reportedOutcome; // Auto-generated Field

	// Modification by: MARKET_CREATOR
	// Influence by: None
	bool private createdBonds; // Auto-generated Field

	// Modification by: MARKET_CREATOR
	// Influence by: None
	bool private reporterSet; // Auto-generated Field

	// Modification by: MANAGER
	// Influence by: MARKET_CREATOR
	bool private tradingActive; // Auto-generated Field

	// Modification by: DESIGNATED_REPORTER, OPEN_REPORTER, MANAGER
	// Influence by: None
	bool private designatedReportAllowed; // Auto-generated Field

	// Modification by: DESIGNATED_REPORTER, OPEN_REPORTER, MANAGER
	// Influence by: None
	bool private openReportAllowed; // Auto-generated Field

	// Modification by: DESIGNATED_REPORTER, OPEN_REPORTER, MANAGER
	// Influence by: None
	bool private disputesAllowed; // Auto-generated Field

	// Modification by: MANAGER
	// Influence by: None
	bool private settlementPhaseActive; // Auto-generated Field

	// Modification by: DESIGNATED_REPORTER
	// Influence by: None
	bool private designatedReporterReported; // Auto-generated Field

	constructor(address creator) {
		//TODO: Auto-generated Constructor
	}

	/// @notice modifies designatedReporter if !reporterSet
	/// @notice modifies reporterSet if !reporterSet
	/// @notice modifies tradingActive if createdBonds && !reporterSet
	function setReporter(address reporter) external onlyMarketCreator {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies creationBond if !createdBonds
	/// @notice modifies validityBond if !createdBonds
	/// @notice modifies createdBonds if !createdBonds
	/// @notice modifies tradingActive if reporterSet && !createdBonds
	function setBonds(uint creation, uint validation) external onlyMarketCreator {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies shares[msg.sender] if tradingActive
	/// @notice modifies msg.sender.balance
	/// @notice modifies address(this).balance
	/// @notice postcondition address(this).balance >= __verifier_old_uint(address(this).balance)
	function buyShares() external payable {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies shares[msg.sender] if tradingActive
	/// @notice modifies msg.sender.balance
	/// @notice postcondition msg.sender.balance >= __verifier_old_uint(msg.sender.balance)
	/// @notice modifies address(this).balance
	/// @notice postcondition address(this).balance <= __verifier_old_uint(address(this).balance)
	function sellShares(uint toSell) external onlyShareholder {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies openReporter if openReportAllowed
	function claimReporterRole() public onlyShareholder {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies reportedOutcome if designatedReportAllowed
	/// @notice modifies designatedReporterReported if designatedReportAllowed
	/// @notice modifies designatedReportAllowed if designatedReportAllowed
	/// @notice modifies openReportAllowed if designatedReportAllowed
	/// @notice modifies disputesAllowed if designatedReportAllowed
	function designatedReport(string memory outcome) external onlyDesignatedReporter {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies reportedOutcome if openReportAllowed
	/// @notice modifies designatedReportAllowed if openReportAllowed
	/// @notice modifies openReportAllowed if openReportAllowed
	/// @notice modifies disputesAllowed if openReportAllowed
	function openReport(string memory outcome) external onlyOpenReporter {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies reportedOutcome 
	/// @notice modifies designatedReportAllowed 
	/// @notice modifies openReportAllowed 
	/// @notice modifies disputesAllowed 
	function report(string memory outcome) private onlyOpenReporterDesignatedReporter {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies agreeCounter if disputesAllowed
	/// @notice modifies disagreeCounter if disputesAllowed
	/// @notice modifies disputes[msg.sender] if disputesAllowed
	function disputeOutcome(OutcomeAcceptance acceptance) external onlyShareholder {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies tradingActive 
	/// @notice modifies designatedReportAllowed 
	function closeTrading() external onlyManager {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies designatedReportAllowed if !designatedReporterReported
	/// @notice modifies openReportAllowed if !designatedReporterReported
	function allowOpenReport() external onlyManager {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies disputesAllowed 
	/// @notice modifies creationBondPaidOut 
	/// @notice modifies settlementPhaseActive 
	function closeDisputingWindow() external onlyManager {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	/// @notice modifies creationBondPaidOut if settlementPhaseActive
	function sentCreationBond() private onlyManager {
		// TODO: implement and verify auto-generated method stub
		revert("TODO: auto-generated method stub");
	}

	modifier onlyMarketCreator {
		require(accCtrl.checkAccess(msg.sender, AccessControlContract.Roles.MARKET_CREATOR), "Access denied due to missing role!");
		_;
	}

	modifier onlyShareholder {
		require(accCtrl.checkAccess(msg.sender, AccessControlContract.Roles.SHAREHOLDER), "Access denied due to missing role!");
		_;
	}

	modifier onlyDesignatedReporter {
		require(accCtrl.checkAccess(msg.sender, AccessControlContract.Roles.DESIGNATED_REPORTER), "Access denied due to missing role!");
		_;
	}

	modifier onlyOpenReporter {
		require(accCtrl.checkAccess(msg.sender, AccessControlContract.Roles.OPEN_REPORTER), "Access denied due to missing role!");
		_;
	}

	modifier onlyOpenReporterDesignatedReporter {
		require(accCtrl.checkAccess(msg.sender, AccessControlContract.Roles.OPEN_REPORTER) ||
				accCtrl.checkAccess(msg.sender, AccessControlContract.Roles.DESIGNATED_REPORTER), "Access denied due to missing role!");
		_;
	}

	modifier onlyManager {
		require(accCtrl.checkAccess(msg.sender, AccessControlContract.Roles.MANAGER), "Access denied due to missing role!");
		_;
	}

}