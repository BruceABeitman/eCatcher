.class final Lcom/instagram/cliffjumper/edit/photo/a/u;
.super Ljava/lang/Enum;
.source "PhotoFilterFragment.java"
.field public static final enum a:I
.field public static final enum b:I
.field private static final synthetic c:[I
.method static constructor <clinit>()V
.registers 4
const/4 v0, 0x2
const/4 v3, 0x1
sput v3, Lcom/instagram/cliffjumper/edit/photo/a/u;->a:I
sput v0, Lcom/instagram/cliffjumper/edit/photo/a/u;->b:I
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/instagram/cliffjumper/edit/photo/a/u;->a:I
aput v2, v0, v1
sget v1, Lcom/instagram/cliffjumper/edit/photo/a/u;->b:I
aput v1, v0, v3
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/a/u;->c:[I
return-void
.end method
.method public static a()[I
.registers 1
sget-object v0, Lcom/instagram/cliffjumper/edit/photo/a/u;->c:[I
invoke-virtual {v0}, [I->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
return-object v0
.end method