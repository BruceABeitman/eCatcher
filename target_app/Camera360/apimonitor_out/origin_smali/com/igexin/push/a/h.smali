.class public Lcom/igexin/push/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/a/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/a/h;
    .registers 1

    sget-object v0, Lcom/igexin/push/a/h;->a:Lcom/igexin/push/a/h;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/a/h;

    invoke-direct {v0}, Lcom/igexin/push/a/h;-><init>()V

    sput-object v0, Lcom/igexin/push/a/h;->a:Lcom/igexin/push/a/h;

    :cond_b
    sget-object v0, Lcom/igexin/push/a/h;->a:Lcom/igexin/push/a/h;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .registers 2

    invoke-static {}, Lcom/igexin/push/a/k;->a()V

    const/4 v0, 0x1

    return v0
.end method
