.class public Lcom/igexin/push/core/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static c:Lcom/igexin/push/core/c/b;


# instance fields
.field a:Lcom/igexin/push/f/a;

.field private b:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/b;->b:Ljava/util/Map;

    new-instance v0, Lcom/igexin/push/f/a;

    invoke-direct {v0}, Lcom/igexin/push/f/a;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/b;->a:Lcom/igexin/push/f/a;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/c/b;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/c/b;->c:Lcom/igexin/push/core/c/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/c/b;

    invoke-direct {v0}, Lcom/igexin/push/core/c/b;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/b;->c:Lcom/igexin/push/core/c/b;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/c/b;->c:Lcom/igexin/push/core/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method
