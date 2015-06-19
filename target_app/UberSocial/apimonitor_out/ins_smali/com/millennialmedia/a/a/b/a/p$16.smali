.class final Lcom/millennialmedia/a/a/b/a/p$16;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "year"
.field private static final b:Ljava/lang/String; = "month"
.field private static final c:Ljava/lang/String; = "dayOfMonth"
.field private static final d:Ljava/lang/String; = "hourOfDay"
.field private static final e:Ljava/lang/String; = "minute"
.field private static final f:Ljava/lang/String; = "second"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Calendar;
.registers 11
const/4 v6, 0x0
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v1, :cond_e
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V
move v5, v6
move v4, v6
move v3, v6
move v2, v6
move v1, v6
:cond_16
:goto_16
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v7, Lcom/millennialmedia/a/a/d/c;->d:Lcom/millennialmedia/a/a/d/c;
if-eq v0, v7, :cond_62
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->g()Ljava/lang/String;
move-result-object v7
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->m()I
move-result v0
const-string v8, "year"
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_30
move v1, v0
goto :goto_16
:cond_30
const-string v8, "month"
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_3a
move v2, v0
goto :goto_16
:cond_3a
const-string v8, "dayOfMonth"
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_44
move v3, v0
goto :goto_16
:cond_44
const-string v8, "hourOfDay"
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_4e
move v4, v0
goto :goto_16
:cond_4e
const-string v8, "minute"
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_58
move v5, v0
goto :goto_16
:cond_58
const-string v8, "second"
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_16
move v6, v0
goto :goto_16
:cond_62
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V
new-instance v0, Ljava/util/GregorianCalendar;
invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V
goto :goto_d
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/Calendar;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$16;->a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Calendar;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Calendar;)V
.registers 5
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_5
return-void
:cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->d()Lcom/millennialmedia/a/a/d/d;
const-string v0, "year"
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
const/4 v0, 0x1
invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I
move-result v0
int-to-long v0, v0
invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/d;->a(J)Lcom/millennialmedia/a/a/d/d;
const-string v0, "month"
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
const/4 v0, 0x2
invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I
move-result v0
int-to-long v0, v0
invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/d;->a(J)Lcom/millennialmedia/a/a/d/d;
const-string v0, "dayOfMonth"
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
const/4 v0, 0x5
invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I
move-result v0
int-to-long v0, v0
invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/d;->a(J)Lcom/millennialmedia/a/a/d/d;
const-string v0, "hourOfDay"
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
const/16 v0, 0xb
invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I
move-result v0
int-to-long v0, v0
invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/d;->a(J)Lcom/millennialmedia/a/a/d/d;
const-string v0, "minute"
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
const/16 v0, 0xc
invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I
move-result v0
int-to-long v0, v0
invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/d;->a(J)Lcom/millennialmedia/a/a/d/d;
const-string v0, "second"
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
const/16 v0, 0xd
invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I
move-result v0
int-to-long v0, v0
invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/d;->a(J)Lcom/millennialmedia/a/a/d/d;
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->e()Lcom/millennialmedia/a/a/d/d;
goto :goto_5
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$16;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Calendar;
move-result-object v0
return-object v0
.end method