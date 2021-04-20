### pyim-smzmdict

This package is a dictionary file especially suitable for [pyim](https://github.com/tumashu/pyim)'s Sanma (triple) Zhengma, which is a kind of Chinese character input scheme, original from Zhengma, similar to Wubi and Cangjie, etc.

Thanks to the scheme author Shi Yue (Zhizhi) for providing free resources.

该项目是 pyim 的一个三码郑码词库，沿用郑码字根，总长压缩为三码。

原词库由「[至至](https://www.yuque.com/smzm)」开发并无偿提供。

#### 本方案具有以下特点： ####

- 重码率低，编码确定性高，为盲打而生。（加权后总体重码率仅为0.16%）
- 码长短，高效率。（经字频加权后总体字均码长2.35）
- 沿用郑码仅使用字形特征来划分的字根体系。
- 纯单字输入。
- 数量较少易于精通的简码。（其中二级简码仅247字，无任何三级简码）
- 左右手分布更为均衡。（左手负荷46.4%，右手负荷45.9%，大拇指7.7%）

增多内容详见[此处](https://www.yuque.com/smzm/zhengma)。

#### 安装与使用 ####

1. 配置 melpa 源，可参考[ELPA 镜像](https://elpa.emacs-china.org/)
2. 安装 pyim 及本词库（M-x `package-install` RET `pyim-smzmdict` RET）；
3. 在 .emacs 中加入如下代码以启用：

```elisp
(require 'pyim-smzmdict)
(pyim-smzmdict-enable)
```

相应的 pyim 配置可参考以下代码：

``` elisp
(setq default-input-method "pyim" ; 设置 Emacs 的输入法为 pyim，必选
      pyim-default-scheme 'smzm   ; 设置 pyim 的输入方案为 smzm，必选
      ;; 以下设置用户可参考 pyim 的 [README](https://github.com/tumashu/pyim/blob/master/README.md) 进行配置或优化
      pyim-enable-shortcode nil
      pyim-punctuation-translate-p '(auto yes no)
      pyim-page-tooltip 'popup)
```
