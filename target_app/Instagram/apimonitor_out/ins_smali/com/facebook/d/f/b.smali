.class public final Lcom/facebook/d/f/b;
.super Ljava/lang/Object;
.source "RealtimeSinceBootClock.java"
.implements Lcom/facebook/d/f/a;
.field private static final a:Lcom/facebook/d/f/b;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/facebook/d/f/b;
invoke-direct {v0}, Lcom/facebook/d/f/b;-><init>()V
sput-object v0, Lcom/facebook/d/f/b;->a:Lcom/facebook/d/f/b;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/facebook/d/f/b;
.registers 1
sget-object v0, Lcom/facebook/d/f/b;->a:Lcom/facebook/d/f/b;
return-object v0
.end method
.method public final now()J
.registers 3
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
return-wide v0
.end method