.class public final Lcom/google/common/collect/ak;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Lcom/google/common/base/d;
.method static constructor <clinit>()V
.registers 2
sget-object v0, Lcom/google/common/collect/d;->a:Lcom/google/common/base/c;
const-string v1, "="
invoke-virtual {v0, v1}, Lcom/google/common/base/c;->c(Ljava/lang/String;)Lcom/google/common/base/d;
move-result-object v0
sput-object v0, Lcom/google/common/collect/ak;->a:Lcom/google/common/base/d;
return-void
.end method
.method public static a()Ljava/util/HashMap;
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
return-object v0
.end method