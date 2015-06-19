.class public Lcom/twidroid/net/oauth/b;
.super Ld/a/a/a;
.source "SourceFile"
.field private static final b:J = -0x6d47cac4b0948347L
.field final synthetic a:Lcom/twidroid/net/oauth/RequestTokenActivity;
.method public constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/net/oauth/b;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-direct {p0, p2, p3}, Ld/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected a()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/net/oauth/b;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-static {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method