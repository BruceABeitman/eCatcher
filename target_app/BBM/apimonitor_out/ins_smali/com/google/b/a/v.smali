.class public abstract Lcom/google/b/a/v;
.super Ljava/lang/Object;
.source "Ticker.java"
.field private static final a:Lcom/google/b/a/v;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/b/a/w;
invoke-direct {v0}, Lcom/google/b/a/w;-><init>()V
sput-object v0, Lcom/google/b/a/v;->a:Lcom/google/b/a/v;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static b()Lcom/google/b/a/v;
.registers 1
sget-object v0, Lcom/google/b/a/v;->a:Lcom/google/b/a/v;
return-object v0
.end method
.method public abstract a()J
.end method