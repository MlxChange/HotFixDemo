.class public final Lhotfix/mlx/hotfixdemo/MainActivity_CF;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "Lhotfix/mlx/hotfixdemo/MainActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "()V",
        "error",
        "",
        "v",
        "Landroid/view/View;",
        "fix",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lhotfix/mlx/hotfixdemo/MainActivity_CF;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhotfix/mlx/hotfixdemo/MainActivity_CF;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lhotfix/mlx/hotfixdemo/MainActivity_CF;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhotfix/mlx/hotfixdemo/MainActivity_CF;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lhotfix/mlx/hotfixdemo/MainActivity_CF;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lhotfix/mlx/hotfixdemo/MainActivity_CF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lhotfix/mlx/hotfixdemo/MainActivity_CF;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final error(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        clazz = "hotfix.mlx.hotfixdemo.MainActivity"
        method = "error"
    .end annotation

    .prologue
    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lhotfix/mlx/hotfixdemo/Utils/Utils;->INSTANCE:Lhotfix/mlx/hotfixdemo/Utils/Utils;

    const-string v1, "after"

    invoke-virtual {v0, v1}, Lhotfix/mlx/hotfixdemo/Utils/Utils;->Logi(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public final fix(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "v"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v2, Lhotfix/mlx/hotfixdemo/Utils/Utils;->INSTANCE:Lhotfix/mlx/hotfixdemo/Utils/Utils;

    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lhotfix/mlx/hotfixdemo/MainActivity;
    invoke-virtual {v2, p0}, Lhotfix/mlx/hotfixdemo/Utils/Utils;->getPatchPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lhotfix/mlx/hotfixlibrary/HotfixManager;->Companion:Lhotfix/mlx/hotfixlibrary/HotfixManager$Companion;

    invoke-virtual {v2}, Lhotfix/mlx/hotfixlibrary/HotfixManager$Companion;->getINSTANCE()Lhotfix/mlx/hotfixlibrary/HotfixManager;

    move-result-object v0

    .line 25
    .local v0, "instance":Lhotfix/mlx/hotfixlibrary/HotfixManager;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/patch.apatch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhotfix/mlx/hotfixlibrary/HotfixManager;->addPatch(Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lhotfix/mlx/hotfixdemo/MainActivity_CF;->setContentView(I)V

    .line 16
    return-void
.end method
