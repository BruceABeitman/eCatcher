.class public final Lcom/google/a/a/a/a;
.super Lcom/google/a/a/e;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/g;
        a = "mad_hac"
        b = false
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/a/a/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/a;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a;->c:I

    return-void
.end method
