.class final synthetic Lcom/bbm/h/c;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/bbm/h/an;->values()[Lcom/bbm/h/an;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/h/c;->a:[I
:try_start_9
sget-object v0, Lcom/bbm/h/c;->a:[I
sget-object v1, Lcom/bbm/h/an;->a:Lcom/bbm/h/an;
invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_56
sget-object v0, Lcom/bbm/h/c;->a:[I
sget-object v1, Lcom/bbm/h/an;->b:Lcom/bbm/h/an;
invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_54
:try_start_1f
:goto_1f
sget-object v0, Lcom/bbm/h/c;->a:[I
sget-object v1, Lcom/bbm/h/an;->c:Lcom/bbm/h/an;
invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_52
sget-object v0, Lcom/bbm/h/c;->a:[I
sget-object v1, Lcom/bbm/h/an;->e:Lcom/bbm/h/an;
invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_start_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_50
sget-object v0, Lcom/bbm/h/c;->a:[I
sget-object v1, Lcom/bbm/h/an;->d:Lcom/bbm/h/an;
invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_4e
:goto_40
:try_start_40
sget-object v0, Lcom/bbm/h/c;->a:[I
sget-object v1, Lcom/bbm/h/an;->f:Lcom/bbm/h/an;
invoke-virtual {v1}, Lcom/bbm/h/an;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4c
return-void
:catch_4c
move-exception v0
goto :goto_4b
:catch_4e
move-exception v0
goto :goto_40
:catch_50
move-exception v0
goto :goto_35
:catch_52
move-exception v0
goto :goto_2a
:catch_54
move-exception v0
goto :goto_1f
:catch_56
move-exception v0
goto :goto_14
.end method