.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;

.field private static final b:I = 0x49


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/alipay/sdk/widget/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/alipay/sdk/util/e;

    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    .line 52
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    .line 53
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/alipay/sdk/widget/a;

    const-string v1, "\u53bb\u652f\u4ed8\u5b9d\u6388\u6743"

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->d:Lcom/alipay/sdk/widget/a;

    .line 55
    return-void
.end method

.method private a()Lcom/alipay/sdk/util/e$a;
    .registers 2

    .prologue
    .line 65
    new-instance v0, Lcom/alipay/sdk/app/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 106
    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {p1}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 108
    new-instance v0, Lcom/alipay/sdk/util/e;

    new-instance v2, Lcom/alipay/sdk/app/a;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    invoke-direct {v0, p1, v2}, Lcom/alipay/sdk/util/e;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v2, "failed"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 112
    invoke-direct {p0, p1, v1}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_2b
    :goto_2b
    return-object v0

    .line 113
    :cond_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 114
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 119
    :cond_37
    invoke-direct {p0, p1, v1}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method private a(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 158
    iget-object v0, p1, Lcom/alipay/sdk/protocol/b;->b:[Ljava/lang/String;

    .line 159
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 160
    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 161
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    sget-object v1, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_23
    sget-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_36
    .catchall {:try_start_23 .. :try_end_28} :catchall_3d

    .line 173
    monitor-exit v1

    .line 175
    sget-object v0, Lcom/alipay/sdk/app/h;->a:Ljava/lang/String;

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 177
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_35
    :goto_35
    return-object v0

    .line 171
    :catch_36
    move-exception v0

    :try_start_37
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_35

    .line 173
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/AuthTask;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 185
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 186
    const-string v2, "com.eg.android.AlipayGphone"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 188
    if-nez v1, :cond_10

    .line 196
    :cond_f
    :goto_f
    return v0

    .line 190
    :cond_10
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_12} :catch_18

    .line 191
    const/16 v2, 0x49

    if-lt v1, v2, :cond_f

    .line 196
    const/4 v0, 0x1

    goto :goto_f

    .line 194
    :catch_18
    move-exception v1

    goto :goto_f
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    .line 125
    const/4 v1, 0x0

    .line 127
    :try_start_4
    new-instance v0, Lcom/alipay/sdk/packet/impl/a;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/a;-><init>()V

    .line 128
    invoke-virtual {v0, p1, p2}, Lcom/alipay/sdk/packet/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/alipay/sdk/packet/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 131
    const-string v2, "form"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    const-string v2, "onload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    .line 135
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 136
    const/4 v0, 0x0

    move v2, v0

    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4a

    .line 137
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    iget-object v0, v0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    sget-object v4, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    if-ne v0, v4, :cond_46

    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    invoke-direct {p0, v0}, Lcom/alipay/sdk/app/AuthTask;->a(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_41} :catch_69
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_41} :catch_7e
    .catchall {:try_start_4 .. :try_end_41} :catchall_8b

    move-result-object v0

    .line 147
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 154
    :goto_45
    return-object v0

    .line 136
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    .line 147
    :cond_4a
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    move-object v0, v1

    .line 150
    :goto_4e
    if-nez v0, :cond_5a

    .line 151
    sget-object v0, Lcom/alipay/sdk/app/i;->b:Lcom/alipay/sdk/app/i;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/i;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object v0

    .line 153
    :cond_5a
    invoke-virtual {v0}, Lcom/alipay/sdk/app/i;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/h;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 141
    :catch_69
    move-exception v0

    .line 142
    :try_start_6a
    sget-object v1, Lcom/alipay/sdk/app/i;->d:Lcom/alipay/sdk/app/i;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/i;->a()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/sdk/app/i;->a(I)Lcom/alipay/sdk/app/i;

    move-result-object v1

    .line 143
    const-string v2, "net"

    invoke-static {v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_8b

    .line 147
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    move-object v0, v1

    .line 148
    goto :goto_4e

    .line 144
    :catch_7e
    move-exception v0

    .line 145
    :try_start_7f
    const-string v2, "biz"

    const-string v3, "H5AuthDataAnalysisError"

    invoke-static {v2, v3, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8b

    .line 147
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    move-object v0, v1

    .line 148
    goto :goto_4e

    .line 147
    :catchall_8b
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    throw v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->d:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->d:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->a()V

    .line 78
    :cond_9
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->d:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->d:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    .line 84
    :cond_9
    return-void
.end method


# virtual methods
.method public declared-synchronized auth(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    .prologue
    .line 87
    monitor-enter p0

    if-eqz p2, :cond_6

    .line 88
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    .line 91
    :cond_6
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_88

    move-result-object v1

    .line 94
    :try_start_16
    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v3, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/alipay/sdk/util/e;

    new-instance v4, Lcom/alipay/sdk/app/a;

    invoke-direct {v4, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    invoke-direct {v0, v2, v4}, Lcom/alipay/sdk/util/e;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V

    invoke-virtual {v0, v3}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "failed"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {}, Lcom/alipay/sdk/app/h;->a()Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_48} :catch_61
    .catchall {:try_start_16 .. :try_end_48} :catchall_75

    move-result-object v0

    .line 98
    :cond_49
    :goto_49
    :try_start_49
    invoke-static {}, Lcom/alipay/sdk/data/a;->b()Lcom/alipay/sdk/data/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/a;->a(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 100
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_88

    .line 102
    :goto_5a
    monitor-exit p0

    return-object v0

    .line 94
    :cond_5c
    :try_start_5c
    invoke-direct {p0, v2, v3}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_61
    .catchall {:try_start_5c .. :try_end_5f} :catchall_75

    move-result-object v0

    goto :goto_49

    .line 96
    :catch_61
    move-exception v0

    :try_start_62
    invoke-static {}, Lcom/alipay/sdk/data/a;->b()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/data/a;->a(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 100
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    .line 101
    goto :goto_5a

    .line 98
    :catchall_75
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/data/a;->b()Lcom/alipay/sdk/data/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/a;->a(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 100
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    throw v0
    :try_end_88
    .catchall {:try_start_62 .. :try_end_88} :catchall_88

    .line 87
    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method