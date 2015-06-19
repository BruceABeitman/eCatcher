.class  Lcom/twidroid/c/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/c/f;
.field private final b:I
.field private final c:Lcom/twidroid/activity/r;
.method public constructor <init>(Lcom/twidroid/c/f;Lcom/twidroid/activity/r;I)V
.registers 4
iput-object p1, p0, Lcom/twidroid/c/h;->a:Lcom/twidroid/c/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/twidroid/c/h;->c:Lcom/twidroid/activity/r;
iput p3, p0, Lcom/twidroid/c/h;->b:I
return-void
.end method
.method public a()Lcom/twidroid/activity/r;
.registers 2
iget-object v0, p0, Lcom/twidroid/c/h;->c:Lcom/twidroid/activity/r;
return-object v0
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/twidroid/c/h;->b:I
return v0
.end method