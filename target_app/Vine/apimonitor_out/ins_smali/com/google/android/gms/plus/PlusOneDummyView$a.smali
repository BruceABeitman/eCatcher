.class  Lcom/google/android/gms/plus/PlusOneDummyView$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/plus/PlusOneDummyView$d;
.field private mContext:Landroid/content/Context;
.method private constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$a;->mContext:Landroid/content/Context;
return-void
.end method
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView$a;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$a;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x1080004
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public isValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method