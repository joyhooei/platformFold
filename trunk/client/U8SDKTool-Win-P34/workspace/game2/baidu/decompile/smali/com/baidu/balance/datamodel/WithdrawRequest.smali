.class public Lcom/baidu/balance/datamodel/WithdrawRequest;
.super Lcom/baidu/wallet/core/beans/BeanRequestBase;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6b805d6eca96d86eL


# instance fields
.field public mAmount:Ljava/lang/String;

.field public mSelectedCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRequestValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/balance/datamodel/WithdrawRequest;->mAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/baidu/balance/datamodel/WithdrawRequest;->mSelectedCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/baidu/balance/datamodel/WithdrawRequest;->setBelongPaySdk()V

    const-string v0, "request_id_withdraw"

    return-object v0
.end method