.class final synthetic Lcom/bbm/ui/c/he;
.super Ljava/lang/Object;
.source "StoreFragment.java"
.field static final synthetic a:[I
.field static final synthetic b:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/bbm/ui/c/hg;->values()[Lcom/bbm/ui/c/hg;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/ui/c/he;->b:[I
:try_start_9
sget-object v0, Lcom/bbm/ui/c/he;->b:[I
sget-object v1, Lcom/bbm/ui/c/hg;->a:Lcom/bbm/ui/c/hg;
invoke-virtual {v1}, Lcom/bbm/ui/c/hg;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52
:goto_14
sget-object v0, Lcom/bbm/ui/c/he;->b:[I
sget-object v1, Lcom/bbm/ui/c/hg;->b:Lcom/bbm/ui/c/hg;
invoke-virtual {v1}, Lcom/bbm/ui/c/hg;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_50
:goto_1f
sget-object v0, Lcom/bbm/ui/c/he;->b:[I
sget-object v1, Lcom/bbm/ui/c/hg;->c:Lcom/bbm/ui/c/hg;
invoke-virtual {v1}, Lcom/bbm/ui/c/hg;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_4e
:goto_2a
invoke-static {}, Lcom/bbm/util/bh;->values()[Lcom/bbm/util/bh;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/ui/c/he;->a:[I
:try_start_33
sget-object v0, Lcom/bbm/ui/c/he;->a:[I
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_3e
.catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c
:goto_3e
:try_start_3e
sget-object v0, Lcom/bbm/ui/c/he;->a:[I
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_49
.catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a
:goto_49
return-void
:catch_4a
move-exception v0
goto :goto_49
:catch_4c
move-exception v0
goto :goto_3e
:catch_4e
move-exception v0
goto :goto_2a
:catch_50
move-exception v0
goto :goto_1f
:catch_52
move-exception v0
goto :goto_14
.end method