.class final synthetic Lcom/bbm/ui/activities/ahv;
.super Ljava/lang/Object;
.source "SponsoredAdActivity.java"
.field static final synthetic a:[I
.field static final synthetic b:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/bbm/ui/activities/ahw;->values()[Lcom/bbm/ui/activities/ahw;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/ui/activities/ahv;->b:[I
:try_start_9
sget-object v0, Lcom/bbm/ui/activities/ahv;->b:[I
sget-object v1, Lcom/bbm/ui/activities/ahw;->b:Lcom/bbm/ui/activities/ahw;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ahw;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_86
sget-object v0, Lcom/bbm/ui/activities/ahv;->b:[I
sget-object v1, Lcom/bbm/ui/activities/ahw;->d:Lcom/bbm/ui/activities/ahw;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ahw;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_84
:try_start_1f
:goto_1f
sget-object v0, Lcom/bbm/ui/activities/ahv;->b:[I
sget-object v1, Lcom/bbm/ui/activities/ahw;->c:Lcom/bbm/ui/activities/ahw;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ahw;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_82
sget-object v0, Lcom/bbm/ui/activities/ahv;->b:[I
sget-object v1, Lcom/bbm/ui/activities/ahw;->a:Lcom/bbm/ui/activities/ahw;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ahw;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_80
invoke-static {}, Lcom/bbm/b/p;->values()[Lcom/bbm/b/p;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/ui/activities/ahv;->a:[I
:try_start_3e
sget-object v0, Lcom/bbm/ui/activities/ahv;->a:[I
sget-object v1, Lcom/bbm/b/p;->d:Lcom/bbm/b/p;
invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_49
:try_end_49
.catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_7e
:try_start_49
sget-object v0, Lcom/bbm/ui/activities/ahv;->a:[I
sget-object v1, Lcom/bbm/b/p;->b:Lcom/bbm/b/p;
invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_54
:try_start_54
:try_end_54
.catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_7c
sget-object v0, Lcom/bbm/ui/activities/ahv;->a:[I
sget-object v1, Lcom/bbm/b/p;->a:Lcom/bbm/b/p;
invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_5f
.catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_7a
:goto_5f
:try_start_5f
sget-object v0, Lcom/bbm/ui/activities/ahv;->a:[I
sget-object v1, Lcom/bbm/b/p;->c:Lcom/bbm/b/p;
invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_6a
:try_start_6a
:try_end_6a
.catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_78
sget-object v0, Lcom/bbm/ui/activities/ahv;->a:[I
sget-object v1, Lcom/bbm/b/p;->e:Lcom/bbm/b/p;
invoke-virtual {v1}, Lcom/bbm/b/p;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:goto_75
:try_end_75
.catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_76
return-void
:catch_76
move-exception v0
goto :goto_75
:catch_78
move-exception v0
goto :goto_6a
:catch_7a
move-exception v0
goto :goto_5f
:catch_7c
move-exception v0
goto :goto_54
:catch_7e
move-exception v0
goto :goto_49
:catch_80
move-exception v0
goto :goto_35
:catch_82
move-exception v0
goto :goto_2a
:catch_84
move-exception v0
goto :goto_1f
:catch_86
move-exception v0
goto :goto_14
.end method