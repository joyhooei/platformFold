.class final Lcom/alipay/sdk/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/h;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/h;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alipay/sdk/app/i;->a:Lcom/alipay/sdk/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/sdk/app/i;->a:Lcom/alipay/sdk/app/h;

    iget-object v0, v0, Lcom/alipay/sdk/app/h;->b:Lcom/alipay/sdk/app/H5PayActivity$a;

    iget-object v0, v0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/H5PayActivity;->a(Lcom/alipay/sdk/app/H5PayActivity;Z)Z

    .line 210
    iget-object v0, p0, Lcom/alipay/sdk/app/i;->a:Lcom/alipay/sdk/app/h;

    iget-object v0, v0, Lcom/alipay/sdk/app/h;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 212
    return-void
.end method