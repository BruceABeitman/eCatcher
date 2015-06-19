.class public final Landroid/support/v4/app/cj;
.super Landroid/support/v4/app/cr;
.source "RemoteInput.java"
.field public static final a:Landroid/support/v4/app/cs;
.field private static final g:Landroid/support/v4/app/cl;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/CharSequence;
.field private final d:[Ljava/lang/CharSequence;
.field private final e:Z
.field private final f:Landroid/os/Bundle;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x14
if-lt v0, v1, :cond_15
new-instance v0, Landroid/support/v4/app/cm;
invoke-direct {v0}, Landroid/support/v4/app/cm;-><init>()V
sput-object v0, Landroid/support/v4/app/cj;->g:Landroid/support/v4/app/cl;
:goto_d
new-instance v0, Landroid/support/v4/app/ck;
invoke-direct {v0}, Landroid/support/v4/app/ck;-><init>()V
sput-object v0, Landroid/support/v4/app/cj;->a:Landroid/support/v4/app/cs;
return-void
:cond_15
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_23
new-instance v0, Landroid/support/v4/app/co;
invoke-direct {v0}, Landroid/support/v4/app/co;-><init>()V
sput-object v0, Landroid/support/v4/app/cj;->g:Landroid/support/v4/app/cl;
goto :goto_d
:cond_23
new-instance v0, Landroid/support/v4/app/cn;
invoke-direct {v0}, Landroid/support/v4/app/cn;-><init>()V
sput-object v0, Landroid/support/v4/app/cj;->g:Landroid/support/v4/app/cl;
goto :goto_d
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/cj;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/cj;->c:Ljava/lang/CharSequence;
return-object v0
.end method
.method public final c()[Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/cj;->d:[Ljava/lang/CharSequence;
return-object v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/cj;->e:Z
return v0
.end method
.method public final e()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/cj;->f:Landroid/os/Bundle;
return-object v0
.end method