.class public final Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;
.super Ljava/lang/Object;
.source "TiltShiftUtil.java"
.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
.registers 2
const/16 v0, 0xb
invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
return-object v0
.end method
.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
invoke-static {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
invoke-static {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
const/16 v3, 0xb
sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
if-eq p1, v0, :cond_41
move v0, v1
:goto_1e
invoke-virtual {p0, v3, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
const/16 v3, 0xc
sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
if-eq p1, v0, :cond_43
move v0, v1
:goto_28
invoke-virtual {p0, v3, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
const/16 v0, 0xf
sget-object v3, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
if-eq p1, v3, :cond_45
:goto_31
invoke-virtual {p0, v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
if-ne p1, v0, :cond_40
invoke-static {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V
:cond_40
return-void
:cond_41
move v0, v2
goto :goto_1e
:cond_43
move v0, v2
goto :goto_28
:cond_45
move v1, v2
goto :goto_31
.end method
.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V
.registers 3
const/16 v0, 0xb
invoke-virtual {p0, v0, p1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
const/16 v0, 0xc
invoke-virtual {p0, v0, p1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
return-void
.end method
.method public static b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
.registers 2
const/16 v0, 0xc
invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
return-object v0
.end method
.method public static c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
.registers 2
const/16 v0, 0xf
invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
return-object v0
.end method