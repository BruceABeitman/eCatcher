.class public final Landroid/support/v4/widget/e;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"
.field private static final b:Landroid/support/v4/widget/h;
.field private a:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/widget/g;
invoke-direct {v0}, Landroid/support/v4/widget/g;-><init>()V
sput-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
:goto_d
return-void
:cond_e
new-instance v0, Landroid/support/v4/widget/f;
invoke-direct {v0}, Landroid/support/v4/widget/f;-><init>()V
sput-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
goto :goto_d
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
invoke-interface {v0, p1}, Landroid/support/v4/widget/h;->a(Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/e;->a:Ljava/lang/Object;
return-void
.end method
.method public final a(II)V
.registers 5
sget-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
iget-object v1, p0, Landroid/support/v4/widget/e;->a:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/h;->a(Ljava/lang/Object;II)V
return-void
.end method
.method public final a()Z
.registers 3
sget-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
iget-object v1, p0, Landroid/support/v4/widget/e;->a:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/h;->a(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final a(F)Z
.registers 4
sget-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
iget-object v1, p0, Landroid/support/v4/widget/e;->a:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/h;->a(Ljava/lang/Object;F)Z
move-result v0
return v0
.end method
.method public final a(Landroid/graphics/Canvas;)Z
.registers 4
sget-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
iget-object v1, p0, Landroid/support/v4/widget/e;->a:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/h;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
move-result v0
return v0
.end method
.method public final b()V
.registers 3
sget-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
iget-object v1, p0, Landroid/support/v4/widget/e;->a:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/h;->b(Ljava/lang/Object;)V
return-void
.end method
.method public final c()Z
.registers 3
sget-object v0, Landroid/support/v4/widget/e;->b:Landroid/support/v4/widget/h;
iget-object v1, p0, Landroid/support/v4/widget/e;->a:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/widget/h;->c(Ljava/lang/Object;)Z
move-result v0
return v0
.end method