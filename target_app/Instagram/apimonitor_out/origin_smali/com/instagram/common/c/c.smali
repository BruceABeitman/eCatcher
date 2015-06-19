.class public final Lcom/instagram/common/c/c;
.super Ljava/lang/Object;
.source "BaseIgBroadcastManager.java"

# interfaces
.implements Lcom/instagram/common/c/g;


# instance fields
.field final synthetic a:Lcom/instagram/common/c/b;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/common/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/IntentFilter;


# direct methods
.method protected constructor <init>(Lcom/instagram/common/c/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/common/c/c;->a:Lcom/instagram/common/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/c/c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/c/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a()Lcom/instagram/common/c/h;
    .registers 5

    new-instance v0, Lcom/instagram/common/c/d;

    iget-object v1, p0, Lcom/instagram/common/c/c;->a:Lcom/instagram/common/c/b;

    iget-object v2, p0, Lcom/instagram/common/c/c;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/instagram/common/c/c;->c:Landroid/content/IntentFilter;

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/common/c/d;-><init>(Lcom/instagram/common/c/b;Ljava/util/Map;Landroid/content/IntentFilter;)V

    return-object v0
.end method
