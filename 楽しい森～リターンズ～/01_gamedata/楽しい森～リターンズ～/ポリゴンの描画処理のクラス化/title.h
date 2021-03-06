//------------------------------------------
//
//	背景の処理[title.h]
//	筒井 俊稀
//
//------------------------------------------
#ifndef _TITLE_H_
#define _TITLE_H_

//------------------------------------------
//	インクルードファイル
//------------------------------------------
#include "scene.h"
#include "scene2d.h"
#include "main.h"

//------------------------------------------
//	前方宣言
//------------------------------------------
class CPolygon;
class CSound;

//------------------------------------------
//	背景のクラス
//------------------------------------------
class CTitle : public CScene
{
public:
	CTitle();
	~CTitle();
	static CTitle *Create(D3DXVECTOR3 pos = D3DXVECTOR3(), D3DXVECTOR3 size = D3DXVECTOR3());
	HRESULT Init(D3DXVECTOR3 pos = D3DXVECTOR3(), D3DXVECTOR3 size = D3DXVECTOR3());
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static HRESULT Load(void);
	static void UnLoad(void);
private:
	CPolygon *m_pPolygon;
	static LPDIRECT3DTEXTURE9 m_pTexture;
	LPDIRECT3DVERTEXBUFFER9 m_pVtxBuff; //頂点バッファへのポインタ
	D3DXVECTOR3 m_pos;
	D3DXVECTOR3 m_size;
};

#endif // !_BG_H_#pragma once
