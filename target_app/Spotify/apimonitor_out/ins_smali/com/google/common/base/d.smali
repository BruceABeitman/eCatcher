.class public final Lcom/google/common/base/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/google/common/base/c;
.field private final b:Ljava/lang/String;
.method private constructor <init>(Lcom/google/common/base/c;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/common/base/d;->a:Lcom/google/common/base/c;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/common/base/d;->b:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/common/base/c;Ljava/lang/String;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/common/base/d;-><init>(Lcom/google/common/base/c;Ljava/lang/String;)V
return-void
.end method