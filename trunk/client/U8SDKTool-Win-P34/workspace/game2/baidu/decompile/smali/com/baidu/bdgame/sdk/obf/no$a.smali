.class Lcom/baidu/bdgame/sdk/obf/no$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/nq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/no;

.field private b:I


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/no;I)V
    .registers 4

    .prologue
    .line 115
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->b:I

    .line 116
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->b:I

    .line 117
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/no;->b(Lcom/baidu/bdgame/sdk/obf/no;)Ljava/util/HashSet;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/no;->b(Lcom/baidu/bdgame/sdk/obf/no;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/no;->c(Lcom/baidu/bdgame/sdk/obf/no;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_37

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/no;->a(Lcom/baidu/bdgame/sdk/obf/no;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/no;->d(Lcom/baidu/bdgame/sdk/obf/no;)V

    .line 139
    :cond_32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/no;->b()V

    .line 141
    :cond_37
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/no;->a(Lcom/baidu/bdgame/sdk/obf/no;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/no;->a(Lcom/baidu/bdgame/sdk/obf/no;Lorg/json/JSONObject;)V

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/no$a;->a:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/no;->b()V

    .line 127
    return-void
.end method