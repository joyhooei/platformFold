.class final Lcom/baidu/bdgame/sdk/obf/gm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gm;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gm;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gm;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gm$2;->a:Lcom/baidu/bdgame/sdk/obf/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gm$2;->a:Lcom/baidu/bdgame/sdk/obf/gm;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gm;->b(Lcom/baidu/bdgame/sdk/obf/gm;Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gm$2;->a:Lcom/baidu/bdgame/sdk/obf/gm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gm;->c(Lcom/baidu/bdgame/sdk/obf/gm;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gm$2;->a:Lcom/baidu/bdgame/sdk/obf/gm;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gm;->d(Lcom/baidu/bdgame/sdk/obf/gm;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gm$2;->a:Lcom/baidu/bdgame/sdk/obf/gm;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/gm;->e(Lcom/baidu/bdgame/sdk/obf/gm;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gm$2;->a:Lcom/baidu/bdgame/sdk/obf/gm;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/gm;->f(Lcom/baidu/bdgame/sdk/obf/gm;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gm$2;->a:Lcom/baidu/bdgame/sdk/obf/gm;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gm;->a(Lcom/baidu/bdgame/sdk/obf/gm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 145
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gm$2;->a:Lcom/baidu/bdgame/sdk/obf/gm;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/gm;->b(Lcom/baidu/bdgame/sdk/obf/gm;)Lcom/baidu/bdgame/sdk/obf/gn;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/gn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_5e
    return-void
.end method