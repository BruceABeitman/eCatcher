.class public final Lcom/instagram/android/l/b/e;
.super Ljava/lang/Object;
.source "UserListResponse.java"
.field private a:Ljava/util/List;
.field private b:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/l/b/e;->a:Ljava/util/List;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/instagram/android/l/b/e;->b:J
return-void
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/android/l/b/e;->a:Ljava/util/List;
return-object v0
.end method
.method public final a(J)V
.registers 5
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-lez v0, :cond_8
iput-wide p1, p0, Lcom/instagram/android/l/b/e;->b:J
:cond_8
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/l/b/e;->a:Ljava/util/List;
return-void
.end method
.method public final b()J
.registers 3
iget-wide v0, p0, Lcom/instagram/android/l/b/e;->b:J
return-wide v0
.end method