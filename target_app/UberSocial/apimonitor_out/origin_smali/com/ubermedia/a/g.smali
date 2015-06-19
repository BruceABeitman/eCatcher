.class public final Lcom/ubermedia/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final b:Ljava/lang/Object;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/ubermedia/a/g;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/ubermedia/a/g;->a:Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/ubermedia/a/g;->a:Ljava/lang/Throwable;

    iget-boolean v0, p1, Lcom/ubermedia/a/g;->c:Z

    iput-boolean v0, p0, Lcom/ubermedia/a/g;->c:Z

    iput-object p2, p0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubermedia/a/g;->a:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubermedia/a/g;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/ubermedia/a/g;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubermedia/a/g;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubermedia/a/g;->a:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubermedia/a/g;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/a/g;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
