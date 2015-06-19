.class final Lcom/instagram/l/h;
.super Ljava/lang/Object;
.source "QuickExperimentFileCacheModel.java"
.field private a:Ljava/util/Map;
.field private b:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/util/Map;J)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/l/h;->a:Ljava/util/Map;
iput-wide p2, p0, Lcom/instagram/l/h;->b:J
return-void
.end method
.method public final a()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/l/h;->a:Ljava/util/Map;
return-object v0
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/instagram/l/h;->b:J
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/instagram/l/h;->a:Ljava/util/Map;
return-void
.end method
.method public final b()J
.registers 3
iget-wide v0, p0, Lcom/instagram/l/h;->b:J
return-wide v0
.end method