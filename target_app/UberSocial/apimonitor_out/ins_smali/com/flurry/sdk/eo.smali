.class public final Lcom/flurry/sdk/eo;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/eo;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/eo;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/eq;
.registers 7
const/4 v1, 0x0
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_8
:goto_7
return-object v1
:try_start_8
:cond_8
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v2, "getInstance"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Class;
invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v2, 0x0
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/eq;
:goto_1f
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_21
move-object v1, v0
goto :goto_7
:catch_21
move-exception v0
const/4 v2, 0x5
sget-object v3, Lcom/flurry/sdk/eo;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "FlurryModule "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " is not available:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_1f
.end method