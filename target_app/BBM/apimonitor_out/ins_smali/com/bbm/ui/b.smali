.class final synthetic Lcom/bbm/ui/b;
.super Ljava/lang/Object;
.source "ActivityTransitionLifeCycleListener.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/bbm/ui/c;->values()[Lcom/bbm/ui/c;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/ui/b;->a:[I
:try_start_9
sget-object v0, Lcom/bbm/ui/b;->a:[I
sget-object v1, Lcom/bbm/ui/c;->a:Lcom/bbm/ui/c;
invoke-virtual {v1}, Lcom/bbm/ui/c;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f
sget-object v0, Lcom/bbm/ui/b;->a:[I
sget-object v1, Lcom/bbm/ui/c;->b:Lcom/bbm/ui/c;
invoke-virtual {v1}, Lcom/bbm/ui/c;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_1f
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d
sget-object v0, Lcom/bbm/ui/b;->a:[I
sget-object v1, Lcom/bbm/ui/c;->d:Lcom/bbm/ui/c;
invoke-virtual {v1}, Lcom/bbm/ui/c;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b
:goto_2a
return-void
:catch_2b
move-exception v0
goto :goto_2a
:catch_2d
move-exception v0
goto :goto_1f
:catch_2f
move-exception v0
goto :goto_14
.end method