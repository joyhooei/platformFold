.class final Lcom/baidu/bdgame/sdk/obf/hv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/hv;
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
        "Lcom/baidu/bdgame/sdk/obf/hv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/hv;
    .registers 4

    .prologue
    .line 129
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hv;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/hv;-><init>()V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hv;->a(Lcom/baidu/bdgame/sdk/obf/hv;I)I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hv;->a(Lcom/baidu/bdgame/sdk/obf/hv;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hv;->b(Lcom/baidu/bdgame/sdk/obf/hv;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hv;->c(Lcom/baidu/bdgame/sdk/obf/hv;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hv;->d(Lcom/baidu/bdgame/sdk/obf/hv;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hv;->e(Lcom/baidu/bdgame/sdk/obf/hv;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hv;->f(Lcom/baidu/bdgame/sdk/obf/hv;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    return-object v0
.end method

.method public a(I)[Lcom/baidu/bdgame/sdk/obf/hv;
    .registers 3

    .prologue
    .line 124
    new-array v0, p1, [Lcom/baidu/bdgame/sdk/obf/hv;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hv$1;->a(Landroid/os/Parcel;)Lcom/baidu/bdgame/sdk/obf/hv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hv$1;->a(I)[Lcom/baidu/bdgame/sdk/obf/hv;

    move-result-object v0

    return-object v0
.end method