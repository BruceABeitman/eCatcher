.class final Lcom/facebook/systrace/e;
.super Ljava/lang/Object;
.source "TraceConfigJB.java"
.field private static volatile a:Ljava/lang/Boolean;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/facebook/systrace/f;
invoke-direct {v0}, Lcom/facebook/systrace/f;-><init>()V
invoke-static {v0}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/Runnable;)V
const/4 v0, 0x0
sput-object v0, Lcom/facebook/systrace/e;->a:Ljava/lang/Boolean;
return-void
.end method
.method public static a()Z
.registers 1
sget-object v0, Lcom/facebook/systrace/e;->a:Ljava/lang/Boolean;
if-nez v0, :cond_7
invoke-static {}, Lcom/facebook/systrace/e;->c()V
:cond_7
sget-object v0, Lcom/facebook/systrace/e;->a:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method static synthetic b()V
.registers 0
invoke-static {}, Lcom/facebook/systrace/e;->c()V
return-void
.end method
.method private static c()V
.registers 5
const/4 v1, 0x0
const-string v0, "debug.atrace.app_cmdlines"
invoke-static {v0}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_14
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
sput-object v0, Lcom/facebook/systrace/e;->a:Ljava/lang/Boolean;
:goto_13
return-void
:cond_14
const-string v2, ","
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/facebook/systrace/TraceDirect;->b()Ljava/lang/String;
move-result-object v3
move v0, v1
:goto_1f
array-length v4, v2
if-ge v0, v4, :cond_35
aget-object v4, v2, v0
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_32
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
sput-object v0, Lcom/facebook/systrace/e;->a:Ljava/lang/Boolean;
goto :goto_13
:cond_32
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_35
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
sput-object v0, Lcom/facebook/systrace/e;->a:Ljava/lang/Boolean;
goto :goto_13
.end method