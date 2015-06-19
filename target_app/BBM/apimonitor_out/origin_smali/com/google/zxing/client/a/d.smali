.class public final Lcom/google/zxing/client/a/d;
.super Lcom/google/zxing/client/a/q;
.source "AddressBookParsedResult.java"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:[Ljava/lang/String;

.field public final j:[Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    sget-object v0, Lcom/google/zxing/client/a/r;->a:Lcom/google/zxing/client/a/r;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V

    iput-object p1, p0, Lcom/google/zxing/client/a/d;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/a/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/a/d;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/zxing/client/a/d;->d:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/zxing/client/a/d;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/zxing/client/a/d;->f:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/zxing/client/a/d;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/zxing/client/a/d;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/zxing/client/a/d;->i:[Ljava/lang/String;

    iput-object p10, p0, Lcom/google/zxing/client/a/d;->j:[Ljava/lang/String;

    iput-object p11, p0, Lcom/google/zxing/client/a/d;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/zxing/client/a/d;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/zxing/client/a/d;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/zxing/client/a/d;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->i:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->e:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/a/d;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
