.class  Lcom/millennialmedia/android/bd;
.super Landroid/widget/MediaController;
.source "SourceFile"
.field  a:Landroid/graphics/drawable/BitmapDrawable;
.field  b:Landroid/graphics/drawable/BitmapDrawable;
.field private c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/millennialmedia/android/ba;)V
.registers 3
invoke-virtual {p1}, Lcom/millennialmedia/android/ba;->getContext()Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/bd;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public setAnchorView(Landroid/view/View;)V
.registers 8
const/4 v5, 0x0
const/4 v4, -0x2
invoke-super {p0, p1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V
new-instance v1, Landroid/widget/Button;
invoke-virtual {p0}, Lcom/millennialmedia/android/bd;->getContext()Landroid/content/Context;
move-result-object v0
invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
iget-object v0, p0, Lcom/millennialmedia/android/bd;->a:Landroid/graphics/drawable/BitmapDrawable;
if-nez v0, :cond_24
:try_start_12
const-string v0, "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII="
invoke-static {v0}, Lcom/millennialmedia/android/s;->a(Ljava/lang/String;)[B
move-result-object v0
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lcom/millennialmedia/android/bd;->a:Landroid/graphics/drawable/BitmapDrawable;
:goto_24
:cond_24
:try_end_24
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_24} :catch_68
iget-object v0, p0, Lcom/millennialmedia/android/bd;->b:Landroid/graphics/drawable/BitmapDrawable;
if-nez v0, :cond_3a
:try_start_28
const-string v0, "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC"
invoke-static {v0}, Lcom/millennialmedia/android/s;->a(Ljava/lang/String;)[B
move-result-object v0
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lcom/millennialmedia/android/bd;->b:Landroid/graphics/drawable/BitmapDrawable;
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_71
:goto_3a
:cond_3a
iget-object v0, p0, Lcom/millennialmedia/android/bd;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/ba;
if-eqz v0, :cond_57
iget-object v2, v0, Lcom/millennialmedia/android/ba;->e:Lcom/millennialmedia/android/bc;
iget-boolean v2, v2, Lcom/millennialmedia/android/bc;->b:Z
if-eqz v2, :cond_7a
iget-object v2, p0, Lcom/millennialmedia/android/bd;->a:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_4f
new-instance v2, Lcom/millennialmedia/android/be;
invoke-direct {v2, v0}, Lcom/millennialmedia/android/be;-><init>(Lcom/millennialmedia/android/ba;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_57
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
const/4 v2, 0x5
invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
const/16 v2, 0x14
const/16 v3, 0xa
invoke-virtual {v0, v5, v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/android/bd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
:catch_68
move-exception v0
const-string v2, "InlineVideoView"
const-string v3, "Exception setting image anchorView inDrawable:"
invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_24
:catch_71
move-exception v0
const-string v2, "InlineVideoView"
const-string v3, "Exception setting image anchorView outDrawable:"
invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3a
:cond_7a
iget-object v2, p0, Lcom/millennialmedia/android/bd;->b:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_4f
.end method