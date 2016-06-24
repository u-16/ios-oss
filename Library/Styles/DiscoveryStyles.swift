import Prelude
import Prelude_UIKit
import UIKit

public let discoveryOnboardingSignUpButtonStyle = baseButtonStyle
  <> UIButton.lens.titleColor(forState: .Normal) .~ .ksr_textDefault
  <> UIButton.lens.backgroundColor(forState: .Normal) .~ .ksr_white
  <> UIButton.lens.titleColor(forState: .Highlighted) .~ .ksr_darkGrayText
  <> UIButton.lens.backgroundColor(forState: .Highlighted) .~ .ksr_lightGrayText
  <> UIButton.lens.layer.borderColor .~ UIColor.ksr_black.CGColor
  <> UIButton.lens.layer.borderWidth .~ 1.0
  <> UIButton.lens.titleText(forState: .Normal) %~ { _ in
    Strings.discovery_onboarding_buttons_signup_or_login()
}

public let discoveryOnboardingTitleStyle =
  UILabel.lens.font .~ .ksr_title3
    <> UILabel.lens.textAlignment .~ .Center
    <> UILabel.lens.numberOfLines .~ 2
    <> UILabel.lens.text %~ { _ in Strings.discovery_onboarding_title_bring_creative_projects_to_life() }

public let discoveryOnboardingLogoStyle =
  UIImageView.lens.contentMode .~ .ScaleAspectFit
    <> UIImageView.lens.contentHuggingPriorityForAxis(.Vertical) .~ UILayoutPriorityRequired
    <> UIImageView.lens.contentCompressionResistancePriorityForAxis(.Vertical) .~ UILayoutPriorityRequired

public let discoveryOnboardingStackViewStyle =
  UIStackView.lens.spacing .~ 16.0
    <> UIStackView.lens.distribution .~ .Fill
    <> UIStackView.lens.alignment .~ .Fill

public let discoveryOnboardingCellStyle = baseTableViewCellStyle()
  <> (UITableViewCell.lens.contentView • UIView.lens.layoutMargins) %~ {
    .init(topBottom: 48.0, leftRight: $0.left)
}