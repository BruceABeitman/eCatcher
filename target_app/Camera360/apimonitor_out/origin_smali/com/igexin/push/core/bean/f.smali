.class public Lcom/igexin/push/core/bean/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/f;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/f;->b:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/f;->b:Ljava/util/Map;

    return-object v0
.end method
