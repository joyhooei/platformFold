.class Landroid/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$fittingMode:I

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 5

    .prologue
    .line 144
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 154
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    .line 156
    new-instance v2, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 160
    .local v1, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 161
    .local v0, "changed":Z
    :goto_1c
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 162
    return-void

    .line 160
    .end local v0    # "changed":Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 16
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 168
    new-instance v4, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v4, v8, v9}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 171
    .local v4, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    const/4 v8, 0x1

    :try_start_e
    invoke-virtual {v4, v8}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 173
    .local v3, "page":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 174
    .local v0, "content":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 177
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 178
    .local v5, "scale":F
    iget v8, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_99

    .line 179
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 183
    :goto_46
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 186
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    div-float v6, v8, v10

    .line 188
    .local v6, "translateX":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    div-float v7, v8, v10

    .line 190
    .local v7, "translateY":F
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 193
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 196
    invoke-virtual {v4, v3}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_77
    .catchall {:try_start_e .. :try_end_77} :catchall_b7

    .line 200
    :try_start_77
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v4, v8}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 203
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/print/PageRange;

    const/4 v9, 0x0

    sget-object v10, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v10, v8, v9

    invoke-virtual {p4, v8}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8e} :catch_aa
    .catchall {:try_start_77 .. :try_end_8e} :catchall_b7

    .line 211
    :goto_8e
    if-eqz v4, :cond_93

    .line 212
    invoke-virtual {v4}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 214
    :cond_93
    if-eqz p2, :cond_98

    .line 216
    :try_start_95
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_c3

    .line 222
    :cond_98
    :goto_98
    return-void

    .line 181
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    :cond_99
    :try_start_99
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_46

    .line 205
    .restart local v6    # "translateX":F
    .restart local v7    # "translateY":F
    :catch_aa
    move-exception v1

    .line 207
    .local v1, "ioe":Ljava/io/IOException;
    const-string v8, "PrintHelperKitkat"

    const-string v9, "Error writing printed content"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v8, 0x0

    invoke-virtual {p4, v8}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_b6
    .catchall {:try_start_99 .. :try_end_b6} :catchall_b7

    goto :goto_8e

    .line 211
    .end local v0    # "content":Landroid/graphics/RectF;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "scale":F
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    :catchall_b7
    move-exception v8

    if-eqz v4, :cond_bd

    .line 212
    invoke-virtual {v4}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 214
    :cond_bd
    if-eqz p2, :cond_c2

    .line 216
    :try_start_bf
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c5

    .line 219
    :cond_c2
    :goto_c2
    throw v8

    .line 217
    .restart local v0    # "content":Landroid/graphics/RectF;
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    .restart local v3    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .restart local v5    # "scale":F
    .restart local v6    # "translateX":F
    .restart local v7    # "translateY":F
    :catch_c3
    move-exception v8

    goto :goto_98

    .end local v0    # "content":Landroid/graphics/RectF;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "scale":F
    .end local v6    # "translateX":F
    .end local v7    # "translateY":F
    :catch_c5
    move-exception v9

    goto :goto_c2
.end method
