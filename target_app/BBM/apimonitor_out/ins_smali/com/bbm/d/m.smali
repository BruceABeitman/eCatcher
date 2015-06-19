.class final synthetic Lcom/bbm/d/m;
.super Ljava/lang/Object;
.source "BbmdsModel.java"
.field static final synthetic a:[I
.field static final synthetic b:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/bbm/util/bh;->values()[Lcom/bbm/util/bh;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/d/m;->b:[I
:try_start_9
sget-object v0, Lcom/bbm/d/m;->b:[I
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_45
sget-object v0, Lcom/bbm/d/m;->b:[I
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43
invoke-static {}, Lcom/bbm/d/w;->values()[Lcom/bbm/d/w;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/d/m;->a:[I
:try_start_28
sget-object v0, Lcom/bbm/d/m;->a:[I
sget-object v1, Lcom/bbm/d/w;->b:Lcom/bbm/d/w;
invoke-virtual {v1}, Lcom/bbm/d/w;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_33
:try_start_33
:try_end_33
.catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_41
sget-object v0, Lcom/bbm/d/m;->a:[I
sget-object v1, Lcom/bbm/d/w;->c:Lcom/bbm/d/w;
invoke-virtual {v1}, Lcom/bbm/d/w;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_3e
.catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3f
:goto_3e
return-void
:catch_3f
move-exception v0
goto :goto_3e
:catch_41
move-exception v0
goto :goto_33
:catch_43
move-exception v0
goto :goto_1f
:catch_45
move-exception v0
goto :goto_14
.end method