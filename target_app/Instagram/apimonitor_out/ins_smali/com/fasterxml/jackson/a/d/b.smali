.class final synthetic Lcom/fasterxml/jackson/a/d/b;
.super Ljava/lang/Object;
.source "ByteSourceJsonBootstrapper.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/a/d;->values()[Lcom/fasterxml/jackson/a/d;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/a/d/b;->a:[I
:try_start_9
sget-object v0, Lcom/fasterxml/jackson/a/d/b;->a:[I
sget-object v1, Lcom/fasterxml/jackson/a/d;->d:Lcom/fasterxml/jackson/a/d;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49
:goto_14
sget-object v0, Lcom/fasterxml/jackson/a/d/b;->a:[I
sget-object v1, Lcom/fasterxml/jackson/a/d;->e:Lcom/fasterxml/jackson/a/d;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_1f
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47
sget-object v0, Lcom/fasterxml/jackson/a/d/b;->a:[I
sget-object v1, Lcom/fasterxml/jackson/a/d;->b:Lcom/fasterxml/jackson/a/d;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45
:goto_2a
sget-object v0, Lcom/fasterxml/jackson/a/d/b;->a:[I
sget-object v1, Lcom/fasterxml/jackson/a/d;->c:Lcom/fasterxml/jackson/a/d;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43
:goto_35
:try_start_35
sget-object v0, Lcom/fasterxml/jackson/a/d/b;->a:[I
sget-object v1, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41
:goto_40
return-void
:catch_41
move-exception v0
goto :goto_40
:catch_43
move-exception v0
goto :goto_35
:catch_45
move-exception v0
goto :goto_2a
:catch_47
move-exception v0
goto :goto_1f
:catch_49
move-exception v0
goto :goto_14
.end method