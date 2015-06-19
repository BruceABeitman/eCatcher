.class public abstract Lcom/google/common/base/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Lcom/google/common/base/k;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/common/base/k$1;
invoke-direct {v0}, Lcom/google/common/base/k$1;-><init>()V
sput-object v0, Lcom/google/common/base/k;->a:Lcom/google/common/base/k;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static b()Lcom/google/common/base/k;
.registers 1
sget-object v0, Lcom/google/common/base/k;->a:Lcom/google/common/base/k;
return-object v0
.end method
.method public abstract a()J
.end method