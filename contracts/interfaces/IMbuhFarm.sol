// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

interface IMbuhFarm {
    /// @dev Pool Information
    struct PoolInfo {
        address stakingTokenAddress;     // staking contract address
        address rewardTokenAddress;      // reward token contract
        uint256 rewardPerDay;            // reward percent per day
        uint unstakingFee;            
        uint256 totalStaked;             /* How many tokens we have successfully staked */
    }

    struct UserInfo {
        uint256 tokenBalance;
        uint256 balance;
        uint256 havested;
        uint256 rewards;
        uint256 rewardPerTokenPaid;     // User rewards per token paid for passive
        uint256 lastUpdated;
    }
    
    function stakeMBT(address account, uint256 amount) external returns(uint256);
    function withdrawMBT(address account, uint256 amount) external returns(uint256);
    function claimReward(uint256 _amount) external;
    function notifyRewardAmount(uint _reward) external;
}

