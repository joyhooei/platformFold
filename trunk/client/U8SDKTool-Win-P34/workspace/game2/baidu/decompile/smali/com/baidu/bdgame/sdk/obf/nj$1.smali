.class final Lcom/baidu/bdgame/sdk/obf/nj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/nj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/nj;
    .registers 4

    .prologue
    .line 109
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nj;-><init>(Lcom/baidu/bdgame/sdk/obf/nj$1;)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nj;->a(Lcom/baidu/bdgame/sdk/obf/nj;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nj;->b(Lcom/baidu/bdgame/sdk/obf/nj;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nj;->a(Lcom/baidu/bdgame/sdk/obf/nj;I)I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nj;->c(Lcom/baidu/bdgame/sdk/obf/nj;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    return-object v0
.end method

.method public a(I)[Lcom/baidu/bdgame/sdk/obf/nj;
    .registers 3

    .prologue
    .line 118
    new-array v0, p1, [Lcom/baidu/bdgame/sdk/obf/nj;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nj$1;->a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/nj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nj$1;->a(I)[Lcom/baidu/bdgame/sdk/obf/nj;

    move-result-object v0

    return-object v0
.end method