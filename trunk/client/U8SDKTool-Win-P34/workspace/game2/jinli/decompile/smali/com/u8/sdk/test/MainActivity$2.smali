.class Lcom/u8/sdk/test/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/test/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/test/MainActivity;


# direct methods
.method constructor <init>(Lcom/u8/sdk/test/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$2;->this$0:Lcom/u8/sdk/test/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$2;->this$0:Lcom/u8/sdk/test/MainActivity;

    # invokes: Lcom/u8/sdk/test/MainActivity;->login()V
    invoke-static {v0}, Lcom/u8/sdk/test/MainActivity;->access$3(Lcom/u8/sdk/test/MainActivity;)V

    return-void
.end method