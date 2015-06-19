.class synthetic Lcom/igexin/push/core/j;
.super Ljava/lang/Object;
.field static final synthetic a:[I
.field static final synthetic b:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/igexin/push/core/l;->a()[Lcom/igexin/push/core/l;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/igexin/push/core/j;->b:[I
:try_start_9
sget-object v0, Lcom/igexin/push/core/j;->b:[I
sget-object v1, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;
invoke-virtual {v1}, Lcom/igexin/push/core/l;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c
sget-object v0, Lcom/igexin/push/core/j;->b:[I
sget-object v1, Lcom/igexin/push/core/l;->b:Lcom/igexin/push/core/l;
invoke-virtual {v1}, Lcom/igexin/push/core/l;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a
:try_start_1f
:goto_1f
sget-object v0, Lcom/igexin/push/core/j;->b:[I
sget-object v1, Lcom/igexin/push/core/l;->c:Lcom/igexin/push/core/l;
invoke-virtual {v1}, Lcom/igexin/push/core/l;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68
invoke-static {}, Lcom/igexin/push/core/k;->a()[Lcom/igexin/push/core/k;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/igexin/push/core/j;->a:[I
:try_start_33
sget-object v0, Lcom/igexin/push/core/j;->a:[I
sget-object v1, Lcom/igexin/push/core/k;->a:Lcom/igexin/push/core/k;
invoke-virtual {v1}, Lcom/igexin/push/core/k;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_3e
:goto_3e
:try_end_3e
.catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_66
sget-object v0, Lcom/igexin/push/core/j;->a:[I
sget-object v1, Lcom/igexin/push/core/k;->b:Lcom/igexin/push/core/k;
invoke-virtual {v1}, Lcom/igexin/push/core/k;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_49
.catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64
:try_start_49
:goto_49
sget-object v0, Lcom/igexin/push/core/j;->a:[I
sget-object v1, Lcom/igexin/push/core/k;->c:Lcom/igexin/push/core/k;
invoke-virtual {v1}, Lcom/igexin/push/core/k;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_54
:try_start_54
:try_end_54
.catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62
sget-object v0, Lcom/igexin/push/core/j;->a:[I
sget-object v1, Lcom/igexin/push/core/k;->d:Lcom/igexin/push/core/k;
invoke-virtual {v1}, Lcom/igexin/push/core/k;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_5f
.catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60
:goto_5f
return-void
:catch_60
move-exception v0
goto :goto_5f
:catch_62
move-exception v0
goto :goto_54
:catch_64
move-exception v0
goto :goto_49
:catch_66
move-exception v0
goto :goto_3e
:catch_68
move-exception v0
goto :goto_2a
:catch_6a
move-exception v0
goto :goto_1f
:catch_6c
move-exception v0
goto :goto_14
.end method