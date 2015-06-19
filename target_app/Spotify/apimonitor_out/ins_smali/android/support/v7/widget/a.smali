.class final Landroid/support/v7/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/reflect/Method;
.field private b:Ljava/lang/reflect/Method;
.field private c:Ljava/lang/reflect/Method;
.field private d:Ljava/lang/reflect/Method;
.method constructor <init>()V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
const-class v0, Landroid/widget/AutoCompleteTextView;
const-string v1, "doBeforeTextChanged"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Class;
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/lang/reflect/Method;
iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/lang/reflect/Method;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:try_start_16
:goto_16
:try_end_16
.catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_16} :catch_65
const-class v0, Landroid/widget/AutoCompleteTextView;
const-string v1, "doAfterTextChanged"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Class;
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/lang/reflect/Method;
iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/lang/reflect/Method;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:goto_29
:try_start_29
:try_end_29
.catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_29} :catch_63
const-class v0, Landroid/widget/AutoCompleteTextView;
const-string v1, "ensureImeVisible"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/a;->c:Ljava/lang/reflect/Method;
iget-object v0, p0, Landroid/support/v7/widget/a;->c:Ljava/lang/reflect/Method;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:try_end_41
.catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_41} :catch_61
:goto_41
:try_start_41
const-class v0, Landroid/view/inputmethod/InputMethodManager;
const-string v1, "showSoftInputUnchecked"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Landroid/os/ResultReceiver;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/a;->d:Ljava/lang/reflect/Method;
iget-object v0, p0, Landroid/support/v7/widget/a;->d:Ljava/lang/reflect/Method;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:try_end_5e
.catch Ljava/lang/NoSuchMethodException; {:try_start_41 .. :try_end_5e} :catch_5f
:goto_5e
return-void
:catch_5f
move-exception v0
goto :goto_5e
:catch_61
move-exception v0
goto :goto_41
:catch_63
move-exception v0
goto :goto_29
:catch_65
move-exception v0
goto :goto_16
.end method
.method final a(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
.registers 8
const/4 v4, 0x0
iget-object v0, p0, Landroid/support/v7/widget/a;->d:Ljava/lang/reflect/Method;
if-eqz v0, :cond_1b
:try_start_5
iget-object v0, p0, Landroid/support/v7/widget/a;->d:Ljava/lang/reflect/Method;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
const/4 v3, 0x0
aput-object v3, v1, v2
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a
:goto_19
return-void
:catch_1a
move-exception v0
:cond_1b
invoke-virtual {p1, p2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
goto :goto_19
.end method
.method final a(Landroid/widget/AutoCompleteTextView;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/lang/reflect/Method;
if-eqz v0, :cond_c
:try_start_4
iget-object v0, p0, Landroid/support/v7/widget/a;->a:Ljava/lang/reflect/Method;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:cond_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d
:goto_c
return-void
:catch_d
move-exception v0
goto :goto_c
.end method
.method final b(Landroid/widget/AutoCompleteTextView;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/lang/reflect/Method;
if-eqz v0, :cond_c
:try_start_4
iget-object v0, p0, Landroid/support/v7/widget/a;->b:Ljava/lang/reflect/Method;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:cond_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d
:goto_c
return-void
:catch_d
move-exception v0
goto :goto_c
.end method
.method final c(Landroid/widget/AutoCompleteTextView;)V
.registers 6
iget-object v0, p0, Landroid/support/v7/widget/a;->c:Ljava/lang/reflect/Method;
if-eqz v0, :cond_14
:try_start_4
iget-object v0, p0, Landroid/support/v7/widget/a;->c:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const/4 v3, 0x1
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15
:cond_14
return-void
:catch_15
move-exception v0
goto :goto_14
.end method