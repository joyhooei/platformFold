.class final Lcom/baidu/bdgame/sdk/obf/fb$7;
.super Lcom/baidu/bdgame/sdk/obf/fb$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fb$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/bdgame/sdk/obf/ez;
    .registers 2

    .prologue
    .line 112
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/fx;-><init>()V

    return-object v0
.end method