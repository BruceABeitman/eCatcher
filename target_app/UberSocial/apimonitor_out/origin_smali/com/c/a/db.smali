.class Lcom/c/a/db;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/dj;


# instance fields
.field final a:Lcom/c/a/ct;


# direct methods
.method constructor <init>(Lcom/c/a/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/db;->a:Lcom/c/a/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(DD)D
    .registers 7

    const-wide/high16 v0, 0x3ff0

    return-wide v0
.end method