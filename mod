<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>无尽冬日士兵属性</title>
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #1a1a2e;
            color: #e6e6e6;
            margin: 0;
            padding: 20px;
            min-height: 100vh;
        }
        
        .container {
            width: 100%;
            max-width: 850px;
            background-color: rgba(30, 30, 46, 0.9);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.4);
            border: 1px solid #3a3a5d;
            margin: 0 auto;
            position: relative;
        }
        
        h1 {
            text-align: center;
            color: #4dabf7;
            margin-top: 0;
            font-size: 1.8rem;
        }
        
        .content-wrapper {
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
        }
        
        @media (max-width: 800px) {
            .content-wrapper {
                grid-template-columns: 1fr;
            }
        }
        
        .main-content {
            display: flex;
            flex-direction: column;
        }
        
        .input-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 20px;
        }
        
        @media (max-width: 600px) {
            .input-grid {
                grid-template-columns: 1fr;
            }
        }
        
        .input-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            color: #a5d8ff;
            font-weight: 500;
        }
        
        input, select {
            width: 100%;
            padding: 12px 15px;
            background-color: #2d3046;
            border: 1px solid #4a4a6d;
            border-radius: 6px;
            color: #e6e6e6;
            font-size: 16px;
        }
        
        .actions-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 20px;
        }
        
        @media (max-width: 600px) {
            .actions-container {
                grid-template-columns: 1fr;
            }
        }
        
        .action-section {
            background-color: rgba(40, 40, 60, 0.6);
            border-radius: 8px;
            padding: 20px;
            border: 1px solid #4a4a6d;
        }
        
        .action-title {
            color: #69db7c;
            border-bottom: 2px solid #69db7c;
            padding-bottom: 8px;
            margin-top: 0;
            font-size: 1.3rem;
            text-align: center;
        }
        
        .barracks-selector {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }
        
        .barrack-btn {
            flex: 1;
            padding: 12px;
            background-color: #2d3046;
            border: 1px solid #4a4a6d;
            border-radius: 6px;
            color: #e6e6e6;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
        }
        
        .barrack-btn.active {
            background-color: #40c057;
            border-color: #40c057;
            color: white;
        }
        
        .double-btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            margin-bottom: 20px;
            transition: all 0.3s;
        }
        
        .double-btn.train {
            background-color: #339af0;
            color: white;
        }
        
        .double-btn.train.active {
            background-color: #1c7ed6;
        }
        
        .double-btn.promote {
            background-color: #ff922b;
            color: white;
        }
        
        .double-btn.promote.active {
            background-color: #e67700;
        }
        
        .calculate-btn {
            display: block;
            width: 100%;
            padding: 15px;
            background: linear-gradient(135deg, #339af0, #1c7ed6);
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 20px;
        }
        
        .results-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-top: 25px;
        }
        
        @media (max-width: 600px) {
            .results-container {
                grid-template-columns: 1fr;
            }
        }
        
        .result-section {
            background-color: rgba(40, 40, 60, 0.6);
            border-radius: 8px;
            padding: 20px;
            border: 1px solid #4a4a6d;
        }
        
        .result-title {
            color: #69db7c;
            border-bottom: 2px solid #69db7c;
            padding-bottom: 8px;
            margin-top: 0;
            font-size: 1.3rem;
            text-align: center;
        }
        
        .result-item {
            margin-bottom: 15px;
            padding-bottom: 15px;
            border-bottom: 1px solid #4a4a6d;
        }
        
        .result-item:last-child {
            border-bottom: none;
            margin-bottom: 0;
            padding-bottom: 0;
        }
        
        .result-label {
            color: #a5d8ff;
            font-size: 0.9rem;
            margin-bottom: 5px;
        }
        
        .result-value {
            font-size: 1.4rem;
            color: #69db7c;
            font-weight: 600;
        }
        
        .time-value {
            color: #ff922b;
        }
        
        .note {
            color: #ff6b6b;
            font-size: 0.85rem;
            margin-top: 5px;
        }
        
        .barracks-result {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 10px;
        }
        
        .barrack-result-item {
            flex: 1;
            min-width: 100px;
            background-color: rgba(45, 48, 70, 0.7);
            border-radius: 6px;
            padding: 10px;
            text-align: center;
        }
        
        .barrack-result-label {
            color: #a5d8ff;
            font-size: 0.85rem;
            margin-bottom: 5px;
        }
        
        .barrack-result-value {
            font-size: 1.2rem;
            color: #69db7c;
            font-weight: 600;
        }
        
        .power-result {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(45, 48, 70, 0.7);
            border-radius: 6px;
            padding: 15px;
            margin-top: 10px;
        }
        
        .power-label {
            color: #a5d8ff;
            font-size: 0.9rem;
        }
        
        .power-value {
            font-size: 1.6rem;
            color: #ff922b;
            font-weight: 600;
        }
        
        .placeholder-text {
            text-align: center;
            color: #6c757d;
            font-style: italic;
            padding: 20px 0;
        }
        
        .training-info {
            margin-top: 15px;
            padding: 10px;
            background-color: rgba(45, 48, 70, 0.5);
            border-radius: 6px;
            font-size: 0.9rem;
        }
        
        .training-info-item {
            margin-bottom: 8px;
            line-height: 1.5;
        }
        
        .training-info-item:last-child {
            margin-bottom: 0;
        }
        
        /* 士兵属性表样式 - 悬浮固定 */
        .soldier-table-section {
            position: fixed;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
            width: 250px;
            background-color: rgba(30, 30, 46, 0.95);
            border-radius: 8px;
            padding: 15px;
            border: 1px solid #4a4a6d;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.6);
            z-index: 100;
            max-height: 80vh;
            overflow-y: auto;
        }
        
        @media (max-width: 1200px) {
            .soldier-table-section {
                position: static;
                transform: none;
                width: 100%;
                max-height: none;
                margin-top: 20px;
            }
        }
        
        .soldier-table-title {
            color: #69db7c;
            border-bottom: 2px solid #69db7c;
            padding-bottom: 8px;
            margin-top: 0;
            font-size: 1.2rem;
            text-align: center;
        }
        
        .soldier-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.85rem;
        }
        
        .soldier-table th, .soldier-table td {
            padding: 8px 5px;
            text-align: center;
            border: 1px solid #4a4a6d;
        }
        
        .soldier-table th {
            background-color: #2d3046;
            color: #4dabf7;
            font-weight: 600;
        }
        
        .soldier-table tr:nth-child(even) {
            background-color: rgba(45, 48, 70, 0.5);
        }
        
        .highlight {
            background-color: rgba(77, 171, 247, 0.2) !important;
        }
        
        .current-level {
            background-color: rgba(255, 146, 43, 0.2) !important;
        }
        
        /* 底部计算器样式 */
        .calculator-section {
            margin-top: 30px;
            background-color: rgba(40, 40, 60, 0.6);
            border-radius: 8px;
            padding: 20px;
            border: 1px solid #4a4a6d;
        }
        
        .calculator-title {
            color: #69db7c;
            border-bottom: 2px solid #69db7c;
            padding-bottom: 8px;
            margin-top: 0;
            font-size: 1.3rem;
            text-align: center;
        }
        
        .calculator-input-group {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
        }
        
        .calculator-input {
            flex: 1;
            padding: 12px 15px;
            background-color: #2d3046;
            border: 1px solid #4a4a6d;
            border-radius: 6px;
            color: #e6e6e6;
            font-size: 16px;
        }
        
        .calculator-btn {
            padding: 12px 20px;
            background: linear-gradient(135deg, #40c057, #2f9e44);
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }
        
        .calculator-result {
            margin-top: 15px;
            padding: 15px;
            background-color: rgba(45, 48, 70, 0.7);
            border-radius: 6px;
            font-size: 1.2rem;
            text-align: center;
            color: #ff922b;
            font-weight: 600;
            min-height: 54px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .calculator-examples {
            margin-top: 10px;
            font-size: 0.85rem;
            color: #a5d8ff;
        }
        
        .calculator-examples-title {
            font-weight: 600;
            margin-bottom: 5px;
        }
        
        .calculator-examples-list {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        
        .calculator-example {
            background-color: rgba(45, 48, 70, 0.5);
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
        }
        
        .calculator-example:hover {
            background-color: rgba(45, 48, 70, 0.8);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>无尽冬日多兵种计算器</h1>
        
        <div class="content-wrapper">
            <div class="main-content">
                <div class="input-grid">
                    <div class="input-group">
                        <label for="acceleration">训练加速(%)-头像旁边的战力可查看</label>
                        <input type="number" id="acceleration" min="0" max="1000" value="177" step="0.1">
                    </div>
                    
                    <div class="input-group">
                        <label for="capacity">训练容量</label>
                        <input type="number" id="capacity" min="1" value="738">
                    </div>
                    
                    <div class="input-group">
                        <label for="maxLevel">可训练最高兵级</label>
                        <select id="maxLevel">
                            <option value="1">1级</option>
                            <option value="2">2级</option>
                            <option value="3">3级</option>
                            <option value="4">4级</option>
                            <option value="5">5级</option>
                            <option value="6">6级</option>
                            <option value="7">7级</option>
                            <option value="8">8级</option>
                            <option value="9">9级</option>
                            <option value="10" selected>10级</option>
                        </select>
                    </div>
                </div>
                
                <label>选择兵营类型</label>
                <div class="barracks-selector">
                    <button class="barrack-btn active" data-barrack="shield">盾兵营</button>
                    <button class="barrack-btn active" data-barrack="spear">矛兵营</button>
                    <button class="barrack-btn active" data-barrack="bow">弓兵营</button>
                </div>
                
                <div class="actions-container">
                    <div class="action-section">
                        <h3 class="action-title">训练士兵</h3>
                        
                        <button class="double-btn train active" id="trainDoubleBtn">训练容量翻倍: 开启</button>
                        
                        <div class="input-group">
                            <label for="trainLevel">训练士兵等级</label>
                            <select id="trainLevel">
                                <option value="1">1级</option>
                                <option value="2">2级</option>
                                <option value="3">3级</option>
                                <option value="4">4级</option>
                                <option value="5">5级</option>
                                <option value="6">6级</option>
                                <option value="7">7级</option>
                                <option value="8">8级</option>
                                <option value="9">9级</option>
                                <option value="10" selected>10级</option>
                            </select>
                            <div class="note">注意：不能超过可训练最高兵级</div>
                        </div>
                    </div>
                    
                    <div class="action-section">
                        <h3 class="action-title">晋升士兵</h3>
                        
                        <button class="double-btn promote active" id="promoteDoubleBtn">晋升容量翻倍: 开启</button>
                        
                        <div class="input-group">
                            <label>晋升等级</label>
                            <div class="level-selector" style="display: flex; align-items: center; gap: 10px; margin-top: 10px;">
                                <select id="fromLevel">
                                    <option value="1">1级</option>
                                    <option value="2">2级</option>
                                    <option value="3">3级</option>
                                    <option value="4">4级</option>
                                    <option value="5">5级</option>
                                    <option value="6">6级</option>
                                    <option value="7">7级</option>
                                    <option value="8">8级</option>
                                    <option value="9" selected>9级</option>
                                </select>
                                <span>→</span>
                                <select id="toLevel">
                                    <option value="2">2级</option>
                                    <option value="3">3级</option>
                                    <option value="4">4级</option>
                                    <option value="5">5级</option>
                                    <option value="6">6级</option>
                                    <option value="7">7级</option>
                                    <option value="8">8级</option>
                                    <option value="9">9级</option>
                                    <option value="10" selected>10级</option>
                                </select>
                            </div>
                            <div class="note">注意：目标等级不能低于起始等级，且不能超过可训练最高兵级</div>
                        </div>
                    </div>
                </div>
                
                <button class="calculate-btn" id="calculateBtn">开始计算</button>
                
                <div class="results-container">
                    <div class="result-section">
                        <h3 class="result-title">训练士兵结果</h3>
                        <div id="trainResult">
                            <div class="placeholder-text">点击"开始计算"查看结果</div>
                        </div>
                    </div>
                    
                    <div class="result-section">
                        <h3 class="result-title">晋升士兵结果</h3>
                        <div id="promoteResult">
                            <div class="placeholder-text">点击"开始计算"查看结果</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 底部计算器 -->
        <div class="calculator-section">
            <h3 class="calculator-title">计算器</h3>
            <div class="calculator-input-group">
                <input type="text" class="calculator-input" id="calculatorInput" placeholder="如：战力与积分比为1：30，则用总战力X30即可计算能拿到的积分">
                <button class="calculator-btn" id="calculatorBtn">计算</button>
            </div>
            <div class="calculator-result" id="calculatorResult">
                计算结果将显示在这里
            </div>
            <div class="calculator-examples">
                <div class="calculator-examples-title">说明：或者用总积分/积分比例得出需要的战力</div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 悬浮的士兵属性表 -->
    <div class="soldier-table-section">
        <h3 class="soldier-table-title">士兵属性表</h3>
        <table class="soldier-table" id="soldierTable">
            <thead>
                <tr>
                    <th>等级</th>
                    <th>战力</th>
                    <th>初始时间</th>
                    <th>实际时间</th>
                </tr>
            </thead>
            <tbody id="soldierTableBody">
                <!-- 表格内容将通过JavaScript填充 -->
            </tbody>
        </table>
    </div>

    <script>
        // 士兵数据
        const soldierData = {
            levels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
            power: [3, 4, 6, 9, 13, 20, 28, 38, 50, 66],
            baseTime: [12, 17, 24, 32, 44, 60, 83, 113, 131, 152]
        };
        
        // 兵营类型
        const barracks = {
            shield: { name: "盾兵", active: true },
            spear: { name: "矛兵", active: true },
            bow: { name: "弓兵", active: true }
        };
        
        // 获取DOM元素
        const accelerationInput = document.getElementById('acceleration');
        const capacityInput = document.getElementById('capacity');
        const maxLevelSelect = document.getElementById('maxLevel');
        const trainDoubleBtn = document.getElementById('trainDoubleBtn');
        const promoteDoubleBtn = document.getElementById('promoteDoubleBtn');
        const trainLevelSelect = document.getElementById('trainLevel');
        const fromLevelSelect = document.getElementById('fromLevel');
        const toLevelSelect = document.getElementById('toLevel');
        const barrackButtons = document.querySelectorAll('.barrack-btn');
        const calculateBtn = document.getElementById('calculateBtn');
        
        // 计算器元素
        const calculatorInput = document.getElementById('calculatorInput');
        const calculatorBtn = document.getElementById('calculatorBtn');
        const calculatorResult = document.getElementById('calculatorResult');
        const calculatorExamples = document.querySelectorAll('.calculator-example');
        
        // 结果容器
        const trainResultEl = document.getElementById('trainResult');
        const promoteResultEl = document.getElementById('promoteResult');
        const soldierTableBody = document.getElementById('soldierTableBody');
        
        // 翻倍状态
        let trainDoubleStatus = true;
        let promoteDoubleStatus = true;
        
        // 当前选中的等级
        let currentTrainLevel = 7;
        let currentFromLevel = 6;
        let currentToLevel = 10;
        
        // 初始化士兵属性表
        function initSoldierTable() {
            soldierTableBody.innerHTML = '';
            
            for (let i = 0; i < soldierData.levels.length; i++) {
                const row = document.createElement('tr');
                row.id = `soldier-row-${soldierData.levels[i]}`;
                
                row.innerHTML = `
                    <td>${soldierData.levels[i]}级</td>
                    <td>${soldierData.power[i]}</td>
                    <td>${soldierData.baseTime[i]}秒</td>
                    <td id="actual-time-${soldierData.levels[i]}">0秒</td>
                `;
                
                soldierTableBody.appendChild(row);
            }
        }
        
        // 更新士兵属性表中的实际训练时间
        function updateSoldierTable() {
            const acceleration = parseFloat(accelerationInput.value) || 0;
            
            for (let i = 0; i < soldierData.levels.length; i++) {
                const level = soldierData.levels[i];
                const actualTime = soldierData.baseTime[i] / (1 + acceleration/100);
                document.getElementById(`actual-time-${level}`).textContent = `${actualTime.toFixed(2)}秒`;
            }
            
            // 高亮当前选择的等级
            highlightSelectedLevels();
        }
        
        // 高亮当前选择的等级
        function highlightSelectedLevels() {
            // 清除所有高亮
            document.querySelectorAll('.soldier-table tr').forEach(row => {
                row.classList.remove('highlight', 'current-level');
            });
            
            // 高亮训练等级
            const trainRow = document.getElementById(`soldier-row-${currentTrainLevel}`);
            if (trainRow) trainRow.classList.add('current-level');
            
            // 高亮晋升等级
            const fromRow = document.getElementById(`soldier-row-${currentFromLevel}`);
            if (fromRow) fromRow.classList.add('highlight');
            
            const toRow = document.getElementById(`soldier-row-${currentToLevel}`);
            if (toRow) toRow.classList.add('highlight');
        }
        
        // 切换兵营选择
        function toggleBarrack(barrackType) {
            barracks[barrackType].active = !barracks[barrackType].active;
            
            // 更新按钮状态
            barrackButtons.forEach(btn => {
                if (btn.dataset.barrack === barrackType) {
                    if (barracks[barrackType].active) {
                        btn.classList.add('active');
                    } else {
                        btn.classList.remove('active');
                    }
                }
            });
        }
        
        // 切换训练翻倍状态
        function toggleTrainDouble() {
            trainDoubleStatus = !trainDoubleStatus;
            if (trainDoubleStatus) {
                trainDoubleBtn.classList.add('active');
                trainDoubleBtn.textContent = '训练容量翻倍: 开启';
            } else {
                trainDoubleBtn.classList.remove('active');
                trainDoubleBtn.textContent = '训练容量翻倍: 关闭';
            }
        }
        
        // 切换晋升翻倍状态
        function togglePromoteDouble() {
            promoteDoubleStatus = !promoteDoubleStatus;
            if (promoteDoubleStatus) {
                promoteDoubleBtn.classList.add('active');
                promoteDoubleBtn.textContent = '晋升容量翻倍: 开启';
            } else {
                promoteDoubleBtn.classList.remove('active');
                promoteDoubleBtn.textContent = '晋升容量翻倍: 关闭';
            }
        }
        
        // 获取实际训练时间
        function getActualTrainingTime(level) {
            const index = soldierData.levels.indexOf(parseInt(level));
            const baseTime = soldierData.baseTime[index];
            const acceleration = parseFloat(accelerationInput.value) || 0;
            return baseTime / (1 + acceleration/100);
        }
        
        // 获取士兵战力
        function getSoldierPower(level) {
            const index = soldierData.levels.indexOf(parseInt(level));
            return soldierData.power[index];
        }
        
        // 格式化时间为d h m s格式
        function formatTime(seconds) {
            const days = Math.floor(seconds / (3600 * 24));
            const hours = Math.floor((seconds % (3600 * 24)) / 3600);
            const minutes = Math.floor((seconds % 3600) / 60);
            const secs = Math.floor(seconds % 60);
            
            let result = "";
            if (days > 0) {
                result += `${days}d `;
            }
            result += `${hours}h ${minutes}m ${secs}s`;
            return result;
        }
        
        // 计算训练
        function calculateTraining() {
            const capacity = parseInt(capacityInput.value) || 1;
            const maxLevel = parseInt(maxLevelSelect.value) || 10;
            const trainLevel = parseInt(trainLevelSelect.value) || 1;
            
            // 更新当前训练等级
            currentTrainLevel = trainLevel;
            
            // 验证训练等级不超过最高等级
            if (trainLevel > maxLevel) {
                alert(`训练等级不能超过可训练最高兵级（${maxLevel}级）`);
                trainLevelSelect.value = maxLevel;
                currentTrainLevel = maxLevel;
                return false;
            }
            
            // 计算单个兵营的训练数量（考虑翻倍）
            const perBarrackCapacity = trainDoubleStatus ? capacity * 2 : capacity;
            
            // 单个士兵战力
            const soldierPower = getSoldierPower(trainLevel);
            
            // 单个士兵实际训练时间
            const actualTrainingTimePerSoldier = getActualTrainingTime(trainLevel);
            
            // 初始化结果
            let totalSoldiers = 0;
            let totalPower = 0;
            let maxTrainingTime = 0;
            let activeBarracks = [];
            
            // 计算每个兵营
            if (barracks.shield.active) {
                const shieldSoldiers = perBarrackCapacity;
                const shieldTrainingTime = shieldSoldiers * actualTrainingTimePerSoldier;
                const shieldPower = shieldSoldiers * soldierPower;
                
                activeBarracks.push({
                    name: "盾兵",
                    count: shieldSoldiers,
                    time: shieldTrainingTime,
                    power: shieldPower
                });
                
                totalSoldiers += shieldSoldiers;
                totalPower += shieldPower;
                maxTrainingTime = Math.max(maxTrainingTime, shieldTrainingTime);
            }
            
            if (barracks.spear.active) {
                const spearSoldiers = perBarrackCapacity;
                const spearTrainingTime = spearSoldiers * actualTrainingTimePerSoldier;
                const spearPower = spearSoldiers * soldierPower;
                
                activeBarracks.push({
                    name: "矛兵",
                    count: spearSoldiers,
                    time: spearTrainingTime,
                    power: spearPower
                });
                
                totalSoldiers += spearSoldiers;
                totalPower += spearPower;
                maxTrainingTime = Math.max(maxTrainingTime, spearTrainingTime);
            }
            
            if (barracks.bow.active) {
                const bowSoldiers = perBarrackCapacity;
                const bowTrainingTime = bowSoldiers * actualTrainingTimePerSoldier;
                const bowPower = bowSoldiers * soldierPower;
                
                activeBarracks.push({
                    name: "弓兵",
                    count: bowSoldiers,
                    time: bowTrainingTime,
                    power: bowPower
                });
                
                totalSoldiers += bowSoldiers;
                totalPower += bowPower;
                maxTrainingTime = Math.max(maxTrainingTime, bowTrainingTime);
            }
            
            return {
                activeBarracks,
                totalSoldiers,
                totalPower,
                maxTrainingTime
            };
        }
        
        // 计算晋升
        function calculatePromotion() {
            const capacity = parseInt(capacityInput.value) || 1;
            const maxLevel = parseInt(maxLevelSelect.value) || 10;
            const fromLevel = parseInt(fromLevelSelect.value) || 1;
            const toLevel = parseInt(toLevelSelect.value) || 10;
            
            // 更新当前晋升等级
            currentFromLevel = fromLevel;
            currentToLevel = toLevel;
            
            // 验证等级
            if (fromLevel >= toLevel) {
                alert('起始等级必须低于目标等级');
                toLevelSelect.value = Math.min(fromLevel + 1, 10);
                currentToLevel = Math.min(fromLevel + 1, 10);
                return false;
            }
            
            if (toLevel > maxLevel) {
                alert(`目标等级不能超过可训练最高兵级（${maxLevel}级）`);
                toLevelSelect.value = maxLevel;
                currentToLevel = maxLevel;
                return false;
            }
            
            // 计算训练容量（考虑翻倍）
            const adjustedCapacity = promoteDoubleStatus ? capacity * 2 : capacity;
            
            // 获取相关数据
            const fromPower = getSoldierPower(fromLevel);
            const toPower = getSoldierPower(toLevel);
            const powerPerSoldier = toPower - fromPower;
            
            // 实际训练时间
            const fromTime = getActualTrainingTime(fromLevel);
            const toTime = getActualTrainingTime(toLevel);
            const maxLevelTime = getActualTrainingTime(maxLevel);
            
            // 晋升每个兵所需时间
            const promotionTimePerSoldier = toTime - fromTime;
            
            // 各兵营晋升的数量 = floor((训练容量 × 可训练最高兵级的实际训练时间) / 晋升每个兵所需时间)
            const perBarrackPromotionCount = Math.floor((adjustedCapacity * maxLevelTime) / promotionTimePerSoldier);
            
            // 初始化结果
            let totalSoldiers = 0;
            let totalPower = 0;
            let maxTrainingTime = 0;
            let activeBarracks = [];
            
            // 计算每个兵营
            if (barracks.shield.active) {
                const shieldSoldiers = perBarrackPromotionCount;
                const shieldTrainingTime = shieldSoldiers * promotionTimePerSoldier;
                const shieldPower = shieldSoldiers * powerPerSoldier;
                
                activeBarracks.push({
                    name: "盾兵",
                    count: shieldSoldiers,
                    time: shieldTrainingTime,
                    power: shieldPower
                });
                
                totalSoldiers += shieldSoldiers;
                totalPower += shieldPower;
                maxTrainingTime = Math.max(maxTrainingTime, shieldTrainingTime);
            }
            
            if (barracks.spear.active) {
                const spearSoldiers = perBarrackPromotionCount;
                const spearTrainingTime = spearSoldiers * promotionTimePerSoldier;
                const spearPower = spearSoldiers * powerPerSoldier;
                
                activeBarracks.push({
                    name: "矛兵",
                    count: spearSoldiers,
                    time: spearTrainingTime,
                    power: spearPower
                });
                
                totalSoldiers += spearSoldiers;
                totalPower += spearPower;
                maxTrainingTime = Math.max(maxTrainingTime, spearTrainingTime);
            }
            
            if (barracks.bow.active) {
                const bowSoldiers = perBarrackPromotionCount;
                const bowTrainingTime = bowSoldiers * promotionTimePerSoldier;
                const bowPower = bowSoldiers * powerPerSoldier;
                
                activeBarracks.push({
                    name: "弓兵",
                    count: bowSoldiers,
                    time: bowTrainingTime,
                    power: bowPower
                });
                
                totalSoldiers += bowSoldiers;
                totalPower += bowPower;
                maxTrainingTime = Math.max(maxTrainingTime, bowTrainingTime);
            }
            
            return {
                activeBarracks,
                totalSoldiers,
                totalPower,
                maxTrainingTime,
                fromLevel,  // 起始等级
                toLevel,    // 目标等级
                perBarrackPromotionCount
            };
        }
        
        // 计算起始等级兵训练信息
        function calculateFromLevelTrainingInfo(fromLevel, promotionCount) {
            const capacity = parseInt(capacityInput.value) || 1;
            const actualTrainingTimePerSoldier = getActualTrainingTime(fromLevel);
            
            // 不开翻倍的情况
            const actualCapacityNoDouble = capacity;
            const timesNoDouble = promotionCount / actualCapacityNoDouble;
            const fullTimesNoDouble = Math.ceil(timesNoDouble);
            const lastCountNoDouble = promotionCount - (fullTimesNoDouble - 1) * actualCapacityNoDouble;
            
            // 不开翻倍总时间
            const totalTimeNoDouble = promotionCount * actualTrainingTimePerSoldier;
            
            // 开翻倍的情况
            const actualCapacityDouble = capacity * 2;
            const timesDouble = promotionCount / actualCapacityDouble;
            const fullTimesDouble = Math.ceil(timesDouble);
            const lastCountDouble = promotionCount - (fullTimesDouble - 1) * actualCapacityDouble;
            
            // 开翻倍总时间
            const totalTimeDouble = promotionCount * actualTrainingTimePerSoldier;
            
            return {
                noDouble: {
                    times: timesNoDouble,
                    fullTimes: fullTimesNoDouble,
                    lastCount: lastCountNoDouble,
                    totalTime: totalTimeNoDouble
                },
                double: {
                    times: timesDouble,
                    fullTimes: fullTimesDouble,
                    lastCount: lastCountDouble,
                    totalTime: totalTimeDouble
                }
            };
        }
        
        // 显示训练结果
        function displayTrainResult(result) {
            if (!result) return;
            
            let html = `
                <div class="result-item">
                    <div class="result-label">训练容量翻倍状态</div>
                    <div class="result-value">${trainDoubleStatus ? '开启' : '关闭'}</div>
                </div>
                <div class="result-item">
                    <div class="result-label">各兵营训练士兵数量</div>
                    <div class="barracks-result">
            `;
            
            result.activeBarracks.forEach(barrack => {
                html += `
                    <div class="barrack-result-item">
                        <div class="barrack-result-label">${barrack.name}</div>
                        <div class="barrack-result-value">${barrack.count.toLocaleString()}</div>
                    </div>
                `;
            });
            
            if (result.activeBarracks.length === 0) {
                html += `<div style="text-align: center; width: 100%; color: #ff6b6b;">请至少选择一个兵营</div>`;
            }
            
            html += `
                    </div>
                </div>
                <div class="result-item">
                    <div class="result-label">可提供总战力</div>
                    <div class="power-result">
                        <div class="power-label">总战力</div>
                        <div class="power-value">${result.totalPower.toLocaleString()}</div>
                    </div>
                </div>
                <div class="result-item">
                    <div class="result-label">总训练时长</div>
                    <div class="result-value time-value">${formatTime(result.maxTrainingTime)}</div>
                </div>
            `;
            
            trainResultEl.innerHTML = html;
        }
        
        // 显示晋升结果
        function displayPromoteResult(result) {
            if (!result) return;
            
            // 计算起始等级兵训练信息
            const trainingInfo = calculateFromLevelTrainingInfo(result.fromLevel, result.perBarrackPromotionCount);
            
            // 构建训练次数描述
            function buildTimesDescription(timesData, isDouble) {
                const capacity = parseInt(capacityInput.value) || 1;
                const actualCapacity = isDouble ? capacity * 2 : capacity;
                const promotionCount = result.perBarrackPromotionCount;
                
                if (timesData.times === 0) {
                    return `训练0次`;
                } else if (timesData.times <= 1) {
                    return `训练1次，训练${promotionCount}个兵`;
                } else {
                    if (timesData.lastCount === actualCapacity) {
                        return `训练${timesData.fullTimes}次`;
                    } else {
                        return `训练${timesData.fullTimes}次，最后一次只训练${timesData.lastCount}个兵`;
                    }
                }
            }
            
            const noDoubleDesc = buildTimesDescription(trainingInfo.noDouble, false);
            const doubleDesc = buildTimesDescription(trainingInfo.double, true);
            
            let html = `
                <div class="result-item">
                    <div class="result-label">晋升容量翻倍状态</div>
                    <div class="result-value">${promoteDoubleStatus ? '开启' : '关闭'}</div>
                </div>
                <div class="result-item">
                    <div class="result-label">各兵营晋升士兵数量</div>
                    <div class="barracks-result">
            `;
            
            result.activeBarracks.forEach(barrack => {
                html += `
                    <div class="barrack-result-item">
                        <div class="barrack-result-label">${barrack.name}</div>
                        <div class="barrack-result-value">${barrack.count.toLocaleString()}</div>
                    </div>
                `;
            });
            
            if (result.activeBarracks.length === 0) {
                html += `<div style="text-align: center; width: 100%; color: #ff6b6b;">请至少选择一个兵营</div>`;
            }
            
            html += `
                    </div>
                </div>
                <div class="result-item">
                    <div class="result-label">可提供总战力</div>
                    <div class="power-result">
                        <div class="power-label">总战力</div>
                        <div class="power-value">${result.totalPower.toLocaleString()}</div>
                    </div>
                </div>
                <div class="result-item">
                    <div class="result-label">总晋升时长</div>
                    <div class="result-value time-value">${formatTime(result.maxTrainingTime)}</div>
                </div>
                <div class="training-info">
                    <div class="result-label">训练${result.fromLevel}级兵所需信息</div>
                    <div class="training-info-item">1，${result.fromLevel}级兵需${noDoubleDesc}最少需要${formatTime(trainingInfo.noDouble.totalTime)}(不开扩容)</div>
                    <div class="training-info-item">2，${result.fromLevel}级兵需${doubleDesc}最少需要${formatTime(trainingInfo.double.totalTime)}(容量翻倍)</div>
                </div>
            `;
            
            promoteResultEl.innerHTML = html;
        }
        
        // 计算器功能
        function calculateExpression(expression) {
            try {
                // 安全检查：移除所有非数学表达式字符
                const sanitizedExpr = expression.replace(/[^0-9+\-*/().,]/g, '');
                
                // 使用Function构造器来避免eval的安全问题
                const result = new Function('return ' + sanitizedExpr)();
                
                // 检查结果是否为有效数字
                if (typeof result === 'number' && !isNaN(result) && isFinite(result)) {
                    return result;
                } else {
                    throw new Error('计算结果无效');
                }
            } catch (error) {
                throw new Error('表达式无效，请检查输入');
            }
        }
        
        // 更新计算器结果
        function updateCalculatorResult() {
            const expression = calculatorInput.value.trim();
            
            if (!expression) {
                calculatorResult.textContent = '请输入表达式';
                return;
            }
            
            try {
                const result = calculateExpression(expression);
                calculatorResult.textContent = `结果: ${result}`;
            } catch (error) {
                calculatorResult.textContent = `错误: ${error.message}`;
            }
        }
        
        // 执行计算
        function calculate() {
            // 更新士兵属性表
            updateSoldierTable();
            
            const trainResult = calculateTraining();
            const promoteResult = calculatePromotion();
            
            if (trainResult !== false) {
                displayTrainResult(trainResult);
            }
            
            if (promoteResult !== false) {
                displayPromoteResult(promoteResult);
            }
        }
        
        // 事件监听
        barrackButtons.forEach(btn => {
            btn.addEventListener('click', () => {
                toggleBarrack(btn.dataset.barrack);
            });
        });
        
        trainDoubleBtn.addEventListener('click', toggleTrainDouble);
        promoteDoubleBtn.addEventListener('click', togglePromoteDouble);
        calculateBtn.addEventListener('click', calculate);
        
        // 计算器事件
        calculatorBtn.addEventListener('click', updateCalculatorResult);
        
        // 计算器输入框按Enter键计算
        calculatorInput.addEventListener('keypress', (e) => {
            if (e.key === 'Enter') {
                updateCalculatorResult();
            }
        });
        
        // 计算器示例点击事件
        calculatorExamples.forEach(example => {
            example.addEventListener('click', () => {
                calculatorInput.value = example.getAttribute('data-expr');
                updateCalculatorResult();
            });
        });
        
        // 输入变化时重新计算
        [accelerationInput, capacityInput, maxLevelSelect, trainLevelSelect, fromLevelSelect, toLevelSelect].forEach(input => {
            input.addEventListener('change', () => {
                // 当训练加速变化时，更新士兵属性表但不计算结果
                if (input === accelerationInput) {
                    updateSoldierTable();
                }
            });
        });
        
        // 页面加载时初始化
        window.addEventListener('DOMContentLoaded', () => {
            initSoldierTable();
            calculate();
        });
    </script>
</body>
</html>
