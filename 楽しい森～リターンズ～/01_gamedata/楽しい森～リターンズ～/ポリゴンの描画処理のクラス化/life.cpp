//=============================================================================
//
// polygon処理 [life.cpp]
// Author : 筒井 俊稀
//
//=============================================================================
#include "life.h"
#include "number.h"

//=============================================================================
//	マクロ定義
//=============================================================================
#define LIFE_NUM 3		// ライフの値

//=============================================================================
//	コンストラクタ
//=============================================================================
CLife::CLife(int nPriority) : CScene(nPriority)
{
	//各変数の初期化
	m_pNumber = NULL;
	m_nLife = LIFE_NUM;
}

//=============================================================================
//	デストラクタ
//=============================================================================
CLife::~CLife()
{
}

//=============================================================================
//	生成処理
//=============================================================================
CLife * CLife::Create(D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
	CLife *pLife;
	pLife = new CLife;
	if (pLife != NULL)
	{
		pLife->Init(pos, size);
	}
	return pLife;
}

//=============================================================================
//	初期化処理
//=============================================================================
HRESULT CLife::Init(D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
	//ナンバーのクリエイト
	m_pNumber = CNumber::Create(pos, size);
	m_pNumber->SetNumber(m_nLife);
	SetObjType(CScene::OBJTYPE_LIFE);
	return S_OK;
}

//=============================================================================
//	終了処理　
//=============================================================================
void CLife::Uninit(void)
{

	if (m_pNumber != NULL)
	{
		m_pNumber->Uninit();
		delete m_pNumber;
		m_pNumber = NULL;
	}

	Release();
}

//=============================================================================
//	更新処理
//=============================================================================
void CLife::Update(void)
{

}

//=============================================================================
//	描画処理
//=============================================================================
void CLife::Draw(void)
{
	m_pNumber->Draw();
}

//=============================================================================
//	スコア加算する処理
//=============================================================================
void CLife::SubtractLife(int nLife)
{
	m_nLife -= nLife;
	m_pNumber->SetNumber(m_nLife);
}

//=============================================================================
//	スコアの取得
//=============================================================================
int CLife::GetLife(void)
{
	return 0;
}
