.class public abstract Lcom/igexin/a/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/d/a/f;


# instance fields
.field private volatile a:Z

.field private b:J

.field protected w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/a;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/igexin/a/a/d/a;->a:Z

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/a/a/d/a;->a:Z

    return v0
.end method

.method public l()J
    .registers 3

    iget-wide v0, p0, Lcom/igexin/a/a/d/a;->b:J

    return-wide v0
.end method
