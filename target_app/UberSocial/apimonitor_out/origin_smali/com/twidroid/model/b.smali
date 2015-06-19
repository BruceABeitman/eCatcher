.class public Lcom/twidroid/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:F

.field public f:F

.field public g:Ljava/lang/String;

.field public h:J


# direct methods
.method public constructor <init>(JIILjava/lang/String;FFLjava/lang/String;J)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twidroid/model/b;->a:J

    iput p3, p0, Lcom/twidroid/model/b;->b:I

    iput p4, p0, Lcom/twidroid/model/b;->c:I

    iput-object p5, p0, Lcom/twidroid/model/b;->d:Ljava/lang/String;

    iput p6, p0, Lcom/twidroid/model/b;->e:F

    iput p7, p0, Lcom/twidroid/model/b;->f:F

    iput-object p8, p0, Lcom/twidroid/model/b;->g:Ljava/lang/String;

    iput-wide p9, p0, Lcom/twidroid/model/b;->h:J

    return-void
.end method
